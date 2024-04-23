// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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

final todoServiceProvider = Provider<TodoService>((ref) => TodoService());

final todoListProvider = FutureProvider<List<Todo>>((ref) async {
  final service = ref.read(todoServiceProvider);
  return service.getAll();
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoPage(),
      ),
    );
  }
}

class TodoPage extends ConsumerWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsyncValue = ref.watch(todoListProvider);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Riverpod Todo",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: todosAsyncValue.when(
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
        data: (todos) => ListView.builder(
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
              leading: CircleAvatar(child: Text(todo.id.toString())),
              trailing: Text("UserId${todo.userId}"),
            );
          },
        ),
      ),
    );
  }
}
