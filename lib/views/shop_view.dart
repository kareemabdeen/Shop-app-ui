import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart_model.dart';
import 'package:shop/models/shoe_model.dart';
import 'package:shop/widgets/custom_dialog.dart';
import 'package:shop/widgets/custom_shoe_item.dart';
import 'package:shop/widgets/custom_textfield_widget.dart';

class ShopPageView extends StatelessWidget {
  const ShopPageView({super.key});

  @override
  Widget build(BuildContext context) {
    addItemAndShowDialog(Shoe shoe) {
      Provider.of<Cart>(context, listen: false).addItemToUserCart(shoe);

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const CustomDialog(
            title: 'Success',
            message: 'Item added successfully!',
          );
        },
      );
    }

    return Consumer<Cart>(
      builder: (BuildContext context, Cart value, Widget? child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomTextField(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                "every flies... some fly longer than others",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hot Picks 🔥",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Expanded(
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.all(15),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: value.shopItems.length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = value.shopItems[index];
                    return CustomShoeTile(
                      onTap: () => addItemAndShowDialog(
                          individualShoe), // not invoking ()=> throw an exception which is debug locked and make different errors
                      shoe: individualShoe,
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 25, right: 25, left: 25,
                // bottom: 25,
              ),
              child: Divider(
                thickness: 2,
                color: Color.fromARGB(116, 255, 255, 255),
                endIndent: 12,
                indent: 12,
              ),
            )
          ],
        );
      },
    );
  }
}
