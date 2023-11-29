import 'package:flutter/material.dart';
import 'package:flutter_application_1211221/page2/constants.dart';
import 'package:flutter_application_1211221/page2/notifier.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/image7.png'),
            radius: 70,
          ),
          SizedBox(
            height: kdouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Makcim Nabiev'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(
              'Mayklmaykl98@mail.ru',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.youtube_searched_for),
            title: Text('Difficult Life'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkNotifier.value = !isDarkNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
