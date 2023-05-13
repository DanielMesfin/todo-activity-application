import 'package:flutter/material.dart';

class TaskTileList extends StatelessWidget {
  final bool isChecked;
  final String taskList;
 final Function(bool) checkBoxCallBack;
  TaskTileList(
      {required this.isChecked,
      required this.taskList,
      required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskList,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:(stateValue)=>checkBoxCallBack(stateValue!),

      ),
    );
  }
}
