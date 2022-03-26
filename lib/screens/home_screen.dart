import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:task_app/screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String apiUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<List<dynamic>> fetchUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff233871),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CourtDetails()),
          );
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xff233871),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 150),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Near you',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '7 Places near you',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  FutureBuilder<List<dynamic>>(
                    future: fetchUsers(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return SizedBox(
                          height: 500,
                          child: ListView.builder(
                              padding: const EdgeInsets.all(8),
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ListTile(
                                          leading: Image.asset(
                                              'images/court_img.png',
                                              fit: BoxFit.fill),
                                          title: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot.data[index]['title'],
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              Text(
                                                  snapshot.data[index]['body']),
                                            ],
                                          )),
                                    ],
                                  ),
                                );
                              }),
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 130, left: 20, right: 20),
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xffeeeeee),
              ),
            ),
            child: const TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(6),
                border: InputBorder.none,
                hintText: '  Search Court',
                //labelStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.my_location,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            ' Location',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30, top: 5),
                        child: Text(
                          '1.South Phase, INDUSTRIAL ESTATE, ...',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: const Icon(
                          Icons.person_outline,
                          color: Color(0xff233871),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
