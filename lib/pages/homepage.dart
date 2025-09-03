import 'package:axolotl_pos/route_names.dart';
import 'package:flutter/material.dart';
import 'package:axolotl_pos/appBar/appBar.dart';
import 'package:axolotl_pos/custom_widgets/neo_container.dart';

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
      appBar: const AppBarWidget(title: 'Axolotl POS'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 5,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NeoContainer(
                    constraints: BoxConstraints(minWidth: 60),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blueGrey,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: const Center(child: Text('Sales')),
                  ),
                  NeoContainer(
                    constraints: BoxConstraints(minWidth: 65),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blueGrey,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: const Center(child: Text('Inventory')),
                  ),
                  Container(
                    constraints: BoxConstraints(minWidth: 75),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blueGrey,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: const Center(child: Text('Customers')),
                  ),
                  Container(
                    constraints: BoxConstraints(minWidth: 60),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blueGrey,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: const Center(child: Text('Settings')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
