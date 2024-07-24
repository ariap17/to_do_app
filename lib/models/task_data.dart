import 'package:flutter/material.dart';
import 'package:today_do_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Go to gym')
  ];

  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();

  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }

  void deletTask (Task task){
    tasks.remove(task);
    notifyListeners();
  }
}