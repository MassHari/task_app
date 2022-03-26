import 'package:flutter/material.dart';

class CourtDetails extends StatelessWidget {
  const CourtDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233871),
      body: Column(
        children: [
          Container(
            height: 120,
            color: const Color(0xff233871),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SafeArea(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: const Color(0xff8da5f6),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Court Details',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: const Color(0xff8da5f6),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.more_vert_sharp,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('TestCourt',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                              Text(
                                '4/199, 3rd Cross St,\n Thirunagar,\n Tiruchirappali, \nTamil Nadu 620020,...',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text('184 ml',
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.water),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('86.1°')
                                ],
                              ),
                              const Text('Humidity: 45%'),
                              const Text('WInd: 9Km/h')
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'About Court',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Total Court',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text('1')
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Court Type      ',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text('Outdoor')
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Lights',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text('Available')
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Public/Private',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text('Private')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Court Timing',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Thursday',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '-                          1:00 AM - 8:00',
                            style: TextStyle(color: Colors.green),
                          ),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Total Check-In',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text('17')
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 1.5,
                              color: Colors.grey,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text('Active Check-In',
                                    style: TextStyle(color: Colors.grey)),
                                Text('0')
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('1:00 AM'), Text('8:00 Pm')],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
