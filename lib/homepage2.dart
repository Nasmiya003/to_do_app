import 'package:flutter/material.dart'; 
import 'package:flutter_application_13/home.dart';
//import 'package:flutter_application_13/homepage2.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'To-Do Tasks',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Consumer<TaskModel>(
        builder: (context, taskProvider, child) {
          return ListView.builder(
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(taskProvider.tasks[index]['taskName'] ?? ''),
                subtitle: Text(taskProvider.tasks[index]['description'] ?? ''),
                trailing: Checkbox(
                  value: taskProvider.tasks[index]['iscompleted'] == 'true',
                  onChanged: (bool? value) {
                    taskProvider.updateTaskStatus(index, value ?? false);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 2, 27, 31),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void _showAddTaskDialog(BuildContext context) {
    String taskName = '';
    String description = '';
   // bool isCompleted = false;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Add New Task',
            style: TextStyle(color: Colors.green, fontSize: 15),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  taskName = value;
                },
                decoration: InputDecoration(labelText: 'Task Name'),
              ),
              TextField(
                onChanged: (value) {
                  description = value;
                },
                decoration: InputDecoration(labelText: 'Description'),
              ),
              // Checkbox(
              //   value: isCompleted,
              //   onChanged: (bool? value) {
              //     isCompleted = value ?? false;
              //   },
              // ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ),
            TextButton(
              onPressed: () {
                if (taskName.isNotEmpty && description.isNotEmpty) {
                  Provider.of<TaskModel>(context, listen: false).addTask({
                    'taskName': taskName,
                    'description': description,
                   //  'iscompleted': isCompleted.toString(),
                  });
                  Navigator.of(context).pop();
                } else {
                  // Show an error message or handle the case where fields are empty
                  print('Task name and description cannot be empty');
                }
              },
              child: Text(
                'Save',
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
            ),
          ],
        );
      },
    );
  }
}
