import 'package:flutter/material.dart';
import 'package:flutter_application_13/home.dart';
import 'package:flutter_application_13/homepage.dart';
//import 'package:flutter_application_13/homepage2.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider( 
      create: (context) => TaskModel(), 
      child: MaterialApp( 
        debugShowCheckedModeBanner: false, 
  
      
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Nasmiya (),
      )
    );
  }
}
