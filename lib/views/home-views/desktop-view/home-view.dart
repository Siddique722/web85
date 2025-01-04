import 'package:flutter/material.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({super.key});

  @override
  State<HomeViewDesktop> createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text("AboutMe"),
        actions: [
          Text('Home'),
          Text('About'),
          Text('Services'),
          SizedBox(
            width: width * 0.009,
          ),
          Text('Portfolio'),
          SizedBox(
            width: width * 0.08,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          children: [
            Container(
              width: width * 0.5,
            ),
            Container(
              width: width * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
