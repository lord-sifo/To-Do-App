import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'add your new task'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
