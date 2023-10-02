import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/1.png",
                height: 50,
                width: 50,
                fit: BoxFit.contain,
             ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0,15,0,100),
                child: Text("SHRINE",
                  style: TextStyle(
                    fontSize: 11 ,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

               Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Username',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.brown,
                    ) ,

                    ),
                  ),

                ),
              ),

              Padding(
               padding: const EdgeInsets.fromLTRB(30,10,30,10),
               child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ) ,

                    ),
                  ),
                  obscureText: true,
                 showCursor: true,
                ),
             ),
            ]),
        ),
      ),
    );
  }
}