import 'package:flutter/material.dart';

class Todo {
  String title;
  bool isCompleted;

  Todo({
    required this.title,
    this.isCompleted = false,
  });
}

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTask(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    _todos[index].isCompleted = !_todos[index].isCompleted;
    notifyListeners();
  }

  void deleteTask(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
