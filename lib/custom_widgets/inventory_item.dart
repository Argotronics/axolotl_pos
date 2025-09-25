import 'package:flutter/material.dart';
import 'package:axolotl_pos/structs/inventory_item_struct.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class InventoryItemWidget extends StatelessWidget {
  final InventoryItem item;
  final Function(String) onQuantityChanged;

  const InventoryItemWidget({
    super.key,
    required this.item,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    var quantityController = TextEditingController(text: '${item.quantity}');

    return Card(
      child: ListTile(
        title: Text(item.name),
        subtitle: Row(
          spacing: 10,
          children: [
            Text('Quantity:'),
            NeuIconButton(
              buttonColor: Colors.white,
              buttonHeight: 20,
              buttonWidth: 20,
              enableAnimation: true,
              icon: const Icon(
                size: 10,
                color: Colors.black,
                Icons.arrow_upward,
              ),
              onPressed: () =>
                  onQuantityChanged((item.quantity + 1).toString()),
            ),
            SizedBox(
              height: 35,
              width: 50,
              child: TextFormField(
                controller: quantityController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                ),
                onFieldSubmitted: (value) {
                  onQuantityChanged(value);
                },
              ),
            ),
            NeuIconButton(
              buttonColor: Colors.white,
              buttonHeight: 20,
              buttonWidth: 20,
              enableAnimation: true,
              icon: const Icon(
                size: 10,
                color: Colors.black,
                Icons.arrow_downward,
              ),
              onPressed: () =>
                  onQuantityChanged((item.quantity - 1).toString()),
            ),
          ],
        ),
      ),
    );
  }
}
