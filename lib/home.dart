import 'package:flutter/material.dart';

class TaskModel extends ChangeNotifier {
//  get tasks => null;

  // String _name = 'undefined michi 😼';

  // String get name => _name;

  // get tasks => null;

  // set name (String taskname,) {
  //   _name = newName;
  //   notifyListeners();
  // }
 List<Map<String, String>> _tasks = [];
 
  List<Map<String, String>> get tasks => _tasks;

  void addTask(Map<String, String> task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTaskStatus(int index, bool isCompleted) {
    _tasks[index]['iscompleted'] = isCompleted.toString();
    notifyListeners();
  }
}

//   void _showAddTaskDialog() {
//     // String title = '';
//     String taskName = '';
//     String description = '';

//     var context;
//     showDialog(
//       context:context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(
//             'Add New Task',
//             style: TextStyle(color: Colors.green, fontSize: 15),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // TextField(
//               //   onChanged: (value) {
//               //     title = value;
//               //   },
//               //   decoration: InputDecoration(labelText: 'Title'),
//               // ),
//               TextField(
//                 onChanged: (value) {
//                   taskName = (value);
//                 },
//                 decoration: InputDecoration(labelText: 'Task Name'),
//               ),
//               TextField(
//                 onChanged: (value) {
//                   description = value;
//                 },
//                 decoration: InputDecoration(labelText: 'Description'),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text(
//                 'Back',
//                 style: TextStyle(color: Colors.red, fontSize: 15),
//               ),
//             ),
//             FloatingActionButton(onPressed:(){
//                 _showAddTaskDialog();
//             },
//              child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//         backgroundColor: Color.fromARGB(255, 2, 27, 31),
//       ),
            
            
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   TaskModel.task({
//                     // 'title': title,
//                     'taskName': taskName,
//                     'description': description,
//                   });
//                 });
//                 Navigator.of(context).pop();
//               },
            
//               child: Text(
//                 'Save',
//                 style: TextStyle(color: Colors.green, fontSize: 15),
//               ),
              
//             ),
//             FloatingActionButton(onPressed: (){})
//           ],
//         );
//       },
//     );
//   }

//   void closeSplashScreen(bool bool, bool bool2) {}
  
//   static void task(Map<String, String> map) {}
  
//   void setState(Null Function() param0) {}

// }