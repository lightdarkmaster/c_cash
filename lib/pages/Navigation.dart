import 'package:c_cash/pages/AboutUs.dart';
import 'package:c_cash/pages/Notifications.dart';
import 'package:c_cash/pages/FAQ.dart';
import 'package:c_cash/pages/History.dart';
import 'package:c_cash/pages/SettingsPage.dart';
import 'package:c_cash/pages/HomeScreen.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key, Key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Navigation> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "C Cash",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Oswald-Light.ttf',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 173, 19, 173),
        iconTheme: IconThemeData(color: Colors.white), // Set icon color to white
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cashbg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  _page = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.timer),
              title: const Text('History'),
              onTap: () {
                setState(() {
                  _page = 1;
                });
                Navigator.pop(context);
              },
            ),
                        ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                setState(() {
                  _page = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About Us'),
              onTap: () {
                setState(() {
                  _page = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('FAQ'),
              onTap: () {
                setState(() {
                  _page = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  _page = 5;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: getPage(_page),
    );
  }

  Widget getPage(int page) {
    switch (page) {
      case 0:
        return const HomeWidget();
      case 1:
        return const History();
      case 2:
        return const Notifications();
      case 3:
        return const AboutUs();
      case 4:
        return const FAQ();
      case 5:
        return const SettingsPage();
      default:
        return Container(); // Default page, you can replace it with another widget.
    }
  }
}
