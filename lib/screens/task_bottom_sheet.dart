import 'package:flutter/material.dart';
import 'package:to_do_list/modal/listOfTask.dart';
import 'package:provider/provider.dart';

class AddTaskList extends StatefulWidget {
  const AddTaskList({Key? key}) : super(key: key);

  @override
  State<AddTaskList> createState() => _AddTaskListState();
}

class _AddTaskListState extends State<AddTaskList> {
  String newTaskAdded='';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding:
          const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add New To Do List ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                onChanged: (value){
                  newTaskAdded=value;// collect the data from the text field
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Add new task to do list ',
                ),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),

              TextButton(
                child: const Text(
                  'Add New Task',
                  style: TextStyle(
                      color: Colors.black87,
                      backgroundColor: Colors.lightBlueAccent
                  ),
                ),
                onPressed: () {
                  // directly put the value in the task adder
                  Provider.of<ListOfTask>(context,listen: false).addTasksInList(newTaskAdded);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

