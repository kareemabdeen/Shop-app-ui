import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart_model.dart';
import 'package:shop/models/shoe_model.dart';
import 'package:shop/widgets/cart_item_widget.dart';
import 'package:shop/widgets/custom_button_widget.dart';
import 'package:shop/widgets/custom_dialog.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteItemFromCart(Shoe shoe) {
    // forgetting to make listen parameter to be false => cant update ui to me
    Provider.of<Cart>(context, listen: false).romoveItemFromCart(shoe);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CustomDialog(
          title: 'Success',
          message: 'Item deleted from cart !',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (BuildContext context, Cart value, Widget? child) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 27,
            vertical: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 210),
                child: Text(
                  "My Cart",
                  //textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.favouritesOfUser.length,
                  itemBuilder: (context, index) {
                    Shoe shoeItem = value.favouritesOfUser[index];

                    return CartItemBuilder(
                      onTap: () => deleteItemFromCart(shoeItem),
                      shoe: shoeItem,
                    );
                  },
                ),
              ),
              const CustomButton(
                title: "\$pay",
              ),
            ],
          ),
        );
      },
    );
  }
}
