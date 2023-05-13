import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../modal/listOfTask.dart';
import 'task_tile_list.dart';

class ListTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListOfTask>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.getCount(),
          itemBuilder: (context, index) {
            return TaskTileList(
              isChecked: taskData.getTask[index].isDone,
              taskList: taskData.getTask[index].task,
              checkBoxCallBack: (newValue){
                taskData.upDateState(newValue,index);
              },
            );
          },
        );
      },
    );
  }
}
