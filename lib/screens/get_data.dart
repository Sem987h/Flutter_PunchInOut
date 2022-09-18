// ignore_for_file: avoid_print, unnecessary_null_comparison, non_constant_identifier_names,

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class GetScreen extends StatefulWidget {
  const GetScreen({Key? key}) : super(key: key);

  @override
  State<GetScreen> createState() => _GetScreenState();
}

class _GetScreenState extends State<GetScreen> {
  final date_time_now = DateTime.now();

  // Post In Method
  void postIn(String data) async {
    try {
      final response = await post(
        Uri.parse("http://192.168.1.2:8000/punchinout/timein/"),
        body: {
          "userid": data,
          "dateuser": "2022-09-16",
          "timestampin": "17:08:44.378275"
        },
      );
      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }

  // Post Out Method
  void postOut(String data) async {
    try {
      final response = await post(
        Uri.parse("http://192.168.1.2:8000/punchinout/timeout/"),
        body: {
          "userid": data,
          "dateuser": "2022-09-16",
          "timestampin": "17:08:44.378275"
        },
      );
      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }

  TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Punch In & Out"),
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              color: Colors.blueGrey,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TabBar(
                  // TabBar
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  indicator: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                  tabs: [
                    Tab(text: 'Punch In'),
                    Tab(text: 'Punch Out'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${date_time_now.hour}:${date_time_now.minute}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                            Text(
                              "${date_time_now.day}/${date_time_now.month}/${date_time_now.year}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Id',
                          ),
                          controller: idController,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            postIn(idController.text.toString());
                            Fluttertoast.showToast(
                              msg: "Punch In Successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0,
                            );
                          },
                          child: const Text('Punch In'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${date_time_now.hour}:${date_time_now.minute}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                            Text(
                              "${date_time_now.day}/${date_time_now.month}/${date_time_now.year}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Id',
                          ),
                          controller: idController,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            postOut(idController.text.toString());
                            Fluttertoast.showToast(
                              msg: "Punch Out Successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.black,
                              fontSize: 16.0,
                            );
                          },
                          child: const Text('Punch Out'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
