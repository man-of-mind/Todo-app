import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function newTaskCallBack;
  AddTaskScreen(this.newTaskCallBack);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                onPressed: () {
                  newTaskCallBack(newTaskTitle);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
