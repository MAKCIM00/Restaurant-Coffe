import 'package:flutter/material.dart';
import 'package:flutter_application_1211221/pages/home_page.dart';
import 'package:flutter_application_1211221/pages/profil_page.dart';

class WidgetFree extends StatefulWidget {
  const WidgetFree({super.key});

  @override
  State<WidgetFree> createState() => _WidgetFreeState();
}

class _WidgetFreeState extends State<WidgetFree> {
  int currentpage = 0;

  List<Widget> pages = const [
    HomePage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentpage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedIndex: currentpage,
        onDestinationSelected: (int value) {
          setState(() {
            currentpage = value;
          });
        },
      ),
    );
  }
}
