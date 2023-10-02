import 'package:flutter/material.dart';
import 'package:login_screen/first_screen.dart';

class SecondScreen extends StatefulWidget {
  var data ;
  var passdata;
   SecondScreen({ super.key, this.data, this.passdata});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //const Text("Hi"),
          Text("${widget.data}",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          //Text("${Widget.passdata}"),
            
            
        ],),
      ),
      
      floatingActionButton: ElevatedButton(
        onPressed: () { 
          Navigator.pop(context);
         // FirstScreen().user.clear;
        },
        child: const Icon(
            Icons.arrow_back,
            size: 50,    
        ),
        
      ),
    );
  }
}
