import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:presensi/home-page.dart';
import 'package:presensi/login-page.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Profile'),
            ),
            ListTile(
              title: const Text("Home"), 
              leading: Icon(Icons.home),

              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return HomePage();
                }),
              ),
            );
              },
            ),
            ListTile(
              title: const Text("Logout"), 
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return LoginPage();
                }),
              ),
            );
              },
            ),
          ],
        ),
      );
  }
}