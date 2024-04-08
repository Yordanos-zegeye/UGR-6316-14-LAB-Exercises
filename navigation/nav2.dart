import "package:flutter/material.dart";
import "package:lab_2_1/course.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CourseApp(),
    );
  }
}

class CoursesListScreen extends StatelessWidget {
  final List<Course> courses;
  final ValueChanged<Course> onTapped;
  const CoursesListScreen({required this.courses, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => onTapped(course),
            ),
        ],
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;
  const CourseDetailsScreen({required this.course});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}

class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;
  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  List<Course> courses = [
    Course(
        code: "SiTE-001",
        title: "Introduction To Programming",
        description: "Computer Organization, Architecture, Programming"),
    Course(
        code: "SiTE-001",
        title: "Discrete Mathematics",
        description: "Computer Organization, Architecture, Programming"),
    Course(
        code: "SiTE-001",
        title: "Mobile Dev",
        description: "Computer Organization, Architecture, Programming")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Navigator(
      pages: [
        MaterialPage(
          key: const ValueKey('CourseListScreen'),
          child: CoursesListScreen(
            courses: courses,
            onTapped: _tabHandler,
          ),
        ),
        if (_selectedCourse != null)
          MaterialPage(
              key: ValueKey(_selectedCourse),
              child: CourseDetailsScreen(
                course: _selectedCourse!,
              ))
      ],
    ));
  }
}
