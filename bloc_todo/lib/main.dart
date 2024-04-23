// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  Todo({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });
}

class TodoService {
  Future<List<Todo>> getAll() async {
    const url = 'https://jsonplaceholder.typicode.com/todos';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final todos = json.map((e) {
        return Todo(
            id: e['id'],
            userId: e['userId'],
            title: e['title'],
            completed: e['completed']);
      }).toList();
      return todos;
    }
    throw "Empty";
  }
}

abstract class TodoEvent {}

class FetchTodoEvent extends TodoEvent {}

abstract class TodoState {}

class InitTodoState extends TodoState {}

class LoadingTodoState extends TodoState {}

class ErrorTodoState extends TodoState {
  final String message;
  ErrorTodoState(this.message);
}

class ResponseTodoState extends TodoState {
  final List<Todo> todos;
  ResponseTodoState(this.todos);
}

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoService _service;
  TodoBloc(this._service) : super(InitTodoState());

  Future<void> fetchTodo() async {
    emit(LoadingTodoState());
    try {
      final response = await _service.getAll();
      emit(ResponseTodoState(response));
    } catch (e) {
      emit(ErrorTodoState(e.toString()));
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(TodoService()),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: TodoPage()),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final bloc = context.read<TodoBloc>();
      bloc.fetchTodo();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Bloc todo",
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.deepPurple[500],
        ),
        body: BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
          if (state is InitTodoState || state is LoadingTodoState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ResponseTodoState) {
            final todos = state.todos;
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(
                    todo.title,
                    style: TextStyle(
                      decoration: todo.completed
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      color: todo.completed ? Colors.grey : Colors.black,
                    ),
                  ),
                  leading: CircleAvatar(
                    child: Text(todo.id.toString()),
                  ),
                  trailing: Text("UserId${todo.userId}"),
                );
              },
            );
          } else if (state is ErrorTodoState) {
            return Center(child: Text(state.message));
          }
          return Text(state.toString());
        }));
  }
}
