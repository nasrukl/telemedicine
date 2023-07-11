import 'package:flutter/material.dart';

import '../homepage.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyHomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('asset/icon_home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/uis_schedule.png'),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/ion_logo-whatsapp.png'),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/icon_notifications.png'),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
