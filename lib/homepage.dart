import 'package:flutter/material.dart';
import 'package:flutter_application_13/homepage2.dart';

class Nasmiya extends StatefulWidget {
  Nasmiya();
 
  @override
  State<Nasmiya> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Nasmiya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
     Image.asset("assets/images/timeclock.JPEG"), 
         
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>ToDoApp()),
              );
            },
            
            child:Container(
             height: 100,
            width: 150,
            color: Color.fromARGB(66, 244, 53, 53),
            child: Text("continue",style: TextStyle(color:Colors.black38,fontSize: 20),),
            
           // child: Text('Continue',style: TextStyle(color: Colors.black,fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

     
      




    