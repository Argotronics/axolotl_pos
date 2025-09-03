import 'package:axolotl_pos/route_names.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Home Page!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.settings);
              },
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
