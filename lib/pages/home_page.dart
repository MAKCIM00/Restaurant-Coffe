import 'package:flutter/material.dart';
import 'package:flutter_application_1211221/page2/constants.dart';
import 'package:flutter_application_1211221/pages/description_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DescriptionPage();
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'HOME',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: kdouble5,
                      ),
                      Image.asset('images/image6.png'),
                      const Text(
                        'Coffe Love',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(
                        height: kdouble5,
                      ),
                      const Text(
                        'American',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: kdouble5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset('images/image7.png'),
                            const SizedBox(
                              height: kdouble5,
                            ),
                            Text(
                              'Coffe Paris',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber[800],
                              ),
                            ),
                            const SizedBox(
                              height: kdouble5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset('images/image7.png'),
                            const SizedBox(
                              height: kdouble5,
                            ),
                            Text(
                              'Coffe Sanfransisco',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Image.asset('images/image9.png'),
                      const Text(
                        'Italion',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Coffe',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
