import 'package:flutter/material.dart';

import '../utils/response.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: R.sh(175, context),
              width: R.sw(317, context),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.5,
                    0.8,
                    1,
                  ],
                  colors: [
                    Color(0xff00796B),
                    Color(0xff03BF9C),
                    Color(0xff03BF9C),
                  ],
                ),
              ),
              child: const SafeArea(
                child: Column(
                  children: [
                    // Align(
                    //     alignment: Alignment.centerRight,
                    //     child: GestureDetector(
                    //       onTap: () {
                    //         Navigator.pop(context);
                    //       },
                    //       child: const Padding(
                    //         padding: EdgeInsets.symmetric(
                    //             horizontal: 6, vertical: 6),
                    //         child: Icon(
                    //           Icons.arrow_back,
                    //           color: Colors.white70,
                    //         ),
                    //       ),
                    //     )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dr. Ajit Bhalla',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              'General physicist',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 12),
                            ),
                            Text(
                              'Khed Clinic',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              title: Padding(
                padding: EdgeInsets.only(top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.yellow,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Clinic',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0XFFD9D9D9),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text('Add another profile',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(
                      thickness: 0.4,
                      color: Colors.black,
                      height: 0,
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            'Upgrade to',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text(
                            'HealTether+',
                            style: TextStyle(
                                color: Color(0XFF03BF9C),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text('Patients Analysis',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text('Appointments Analysis',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text('Payments Analysis',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text('Settings',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text('Logout',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text('Help',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text('Feedback',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Privacy policy.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0XFF757575))),
                        Text('Terms and conditions.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0XFF757575)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        '© Copyright 2023 HealTether. All Rights Reserved',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color(0XFF757575))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
