import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Bar du dessus
        title: const Text('Application test'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.blue,
            height: 10,
          ),
        ],
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, left: 100, right: 100),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.access_alarm),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.access_alarm),
            ),
          ],
        ),
      ),
    );
  }
}
