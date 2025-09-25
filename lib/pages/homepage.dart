import 'package:axolotl_pos/route_names.dart';
import 'package:flutter/material.dart';
import 'package:axolotl_pos/appBar/appBar.dart';
// import 'package:axolotl_pos/custom_widgets/neo_container.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:axolotl_pos/custom_widgets/inventory_item.dart';
import 'package:axolotl_pos/structs/inventory_item_struct.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<InventoryItem> inventoryItems = [];

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
                  NeuIconButton(
                    enableAnimation: true,
                    icon: const Icon(Icons.point_of_sale),
                    onPressed: () {
                      // Navigator.pushNamed(context, RouteNames.settings);
                    },
                  ),
                  NeuContainer(
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
            ...inventoryItems
                .map(
                  (item) => InventoryItemWidget(
                    item: item,
                    onQuantityChanged: (value) {
                      setState(() {
                        item.quantity = int.tryParse(value) ?? item.quantity;
                      });
                    },
                  ),
                )
                .toList(),
            (inventoryItems.isEmpty)
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: NeuSearchBar(
                      searchBarWidth: MediaQuery.of(context).size.width * 0.8,
                      hintText: 'Search Inventory',
                      onChanged: (value) {
                        // Implement search logic here
                      },
                    ),
                  )
                : SizedBox(height: 0, width: 0),
          ],
        ),
      ),
    );
  }
}
