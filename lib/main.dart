import 'package:flutter/material.dart';
import 'package:today_do_app/models/task_data.dart';
import 'package:today_do_app/screens/task_screen/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => TaskData() ,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}

