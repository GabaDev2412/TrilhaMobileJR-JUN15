//lib/utils/task_provider.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TaskProvider with ChangeNotifier {
  List<Map<String, dynamic>> _tasks = [];

  List<Map<String, dynamic>> get tasks => _tasks;

  TaskProvider() {
    _loadTasks();
  }

  void _loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? tasksString = prefs.getString('tasks');
    if (tasksString != null) {
      _tasks = List<Map<String, dynamic>>.from(json.decode(tasksString));
    }
    notifyListeners();
  }

  void _saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('tasks', json.encode(_tasks));
  }

  void addTask(String title) {
    _tasks.add({'title': title, 'isCompleted': false});
    _saveTasks();
    notifyListeners();
  }

  void toggleCompleteTask(int index) {
    _tasks[index]['isCompleted'] = !_tasks[index]['isCompleted'];
    _saveTasks();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    _saveTasks();
    notifyListeners();
  }

  void clearTasks() {
    _tasks.clear();
    _saveTasks();
    notifyListeners();
  }
}
