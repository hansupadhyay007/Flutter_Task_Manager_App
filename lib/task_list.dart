import 'package:flutter/material.dart';
import 'package:firstapp/model/todo.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('ADDED TASKS LIST'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: ToDo.todoList().length,
          itemBuilder: (context, index) {
            final task = ToDo.todoList()[index];
            return ListTile(
              title: Text(task.todoText!),
              trailing: task.isDone
                  ? Icon(Icons.check_box)
                  : Icon(Icons.check_box_outline_blank),
            );
          },
        ),
      );
}
