import 'package:flutter/material.dart';
import 'package:login_screen/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var user = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.purple[50],
        ),
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
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 100),
                  child: Text(
                    "SHRINE",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                  child: TextField(
                    controller: user,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    obscureText: true,
                    showCursor: true,
                  ),
                ),
              ]),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondScreen(
                  data: "Welcome ${user.text}",
                  passdata: password.text,
                ),
              ),
            );// Navigator.push
          }, // onPressed
          style: ButtonStyle(
            //side: BorderSide(
              //width: 5.0,
            //),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.purple.shade100;
                }
              },
            ),
          ),

          child: const Icon(
            Icons.arrow_forward,
            size: 50,
            //opticalSize: 20.0,
          ),
        ));
  }
}
