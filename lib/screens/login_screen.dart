// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 136, 103),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  transform: Matrix4.translationValues(0.0, -50.0, -20.0),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 120, 47, 215),
                    // borderRadius: BorderRadius.circular(150),
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Mobile Number\nVarification",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please Enter You Mobile Number Below",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 120, 47, 215),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 120, 47, 215),
                          width: 2,
                        ),
                      ),
                      prefix: Text("+91 "),
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Color.fromARGB(255, 120, 47, 215),
                      ),
                      labelText: 'Enter Phone Number',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  transform: Matrix4.translationValues(-120.0, 60.0, 0.0),
                  height: 320,
                  width: 320,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 120, 47, 215),
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height / 13,
                    width: MediaQuery.of(context).size.height / 4,
                    margin: const EdgeInsets.fromLTRB(80, 160, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 30, 30, 30),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 136, 103),
                        width: 3,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        )
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Send Otp",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 136, 103),
                            fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
