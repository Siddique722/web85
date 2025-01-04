import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web85/login-screen.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                currentAccountPicture: CircleAvatar(),
                accountName: Text('data'),
                accountEmail: Text('data')),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RandomScreen()));
              },
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),
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
              child: IconButton(
                  onPressed: () async {
                    final whatappUrl = 'https://wa.me/+923366632717';
                    await launchUrl(Uri.parse(whatappUrl));
                  },
                  icon: Icon(Icons.mail)),
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
