import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_do_app/models/task_data.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;

  const AddTask(this.addTaskCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    log('test');
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
          TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              }),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF000066),
              // primary: Colors.white
            ),
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
