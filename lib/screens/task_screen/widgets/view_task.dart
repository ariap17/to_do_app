import 'package:flutter/material.dart';
import 'package:today_do_app/models/task_data.dart';
import 'package:today_do_app/screens/task_screen/widgets/tasks_list.dart';
import 'package:provider/provider.dart';



class ViewTask extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context,index){
              return TaskTile(isChecked: taskData.tasks[index].isDone,
                  taskTitle: taskData.tasks[index].name,
                  checkboxChange: (newValue){
                taskData.updateTask(taskData.tasks[index]);

                  },
                listTileDelete: (){
                taskData.deletTask(taskData.tasks[index]);
                },
              );
            }
        );
      },

    );
    
  }
}
