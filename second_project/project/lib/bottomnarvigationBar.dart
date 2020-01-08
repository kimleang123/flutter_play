import 'package:flutter/material.dart';
// import 'package:my_app/home.dart';
// import 'package:my_app/notifications.dart';
// import 'package:my_app/profile.dart';
// import 'package:my_app/video.dart';

import 'home.dart';
import 'notifications.dart';
import 'profile.dart';
import 'video.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomBar();
  }
}

class BottomBar extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  static List<String> _titles = ['Home', 'Videos', 'Notifications', 'Profile'];

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    VideoScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(_titles.elementAt(_selectedIndex)),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('images/image2.JPG'),
                ),
              ),
              accountName: Text(
                'Oeng Mengthong',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              accountEmail: Text(
                'mengthongoenggl@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text('About Us'),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'v0.0.1 beta1',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text('Videos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }
}
