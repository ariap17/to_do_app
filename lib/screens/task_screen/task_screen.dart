import 'package:flutter/material.dart';
import 'package:today_do_app/models/task_data.dart';
import 'package:today_do_app/screens/task_screen/add_task.dart';
import 'package:today_do_app/screens/task_screen/widgets/view_task.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
              context: context, builder: (context)=> SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child:  AddTask((newTaskTitle){
                    // setState(() {
                    //   tasks.add(Task(name: newTaskTitle));
                    //   Navigator.pop(context);
                    // });


                  })
              )));
        },
        backgroundColor: Color(0xFFb3c9e6),
        child: const Icon(
          Icons.add,
          color: Color(0xFF000066),
        ),
      ),
      backgroundColor: Color(0xFF000066),
      body: Container(
        padding: const EdgeInsets.only(top: 60,
            left: 20,
            right: 20,
            bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.playlist_add_check_rounded,
                  size: 40,
                  color: Colors.white,),
                SizedBox(width: 30,),
                Text('ToDayDo',style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)

              ],
            ),

            const SizedBox(height: 20),

             Text('${Provider.of<TaskData>(context).tasks.length}  Tasks', style: const TextStyle(
                fontSize: 18,
                color: Colors.white
            ),),
            const SizedBox(height: 20),
            Expanded(
              child: Container(

                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child:  ViewTask(),
              ),
            )
          ],
        ),

      ),
    );
  }
}
