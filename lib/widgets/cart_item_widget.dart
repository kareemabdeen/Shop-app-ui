import 'package:flutter/material.dart';
import 'package:shop/models/shoe_model.dart';

class CartItemBuilder extends StatefulWidget {
  const CartItemBuilder({super.key, required this.shoe, this.onTap});

  final Shoe shoe;
  final void Function()? onTap;

  @override
  State<CartItemBuilder> createState() => _CartItemBuilderState();
}

class _CartItemBuilderState extends State<CartItemBuilder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              blurRadius: 13,
              color: Colors.grey.shade300,
              offset: const Offset(0, 5),
              blurStyle: BlurStyle.inner,
              spreadRadius: 3,
            )
          ],
        ),
        child: ListTile(
          leading: Image.network(widget.shoe.image),
          title: Text(widget.shoe.name),
          subtitle: Text(
            "\$${widget.shoe.price.toString()}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey[600], fontSize: 13),
          ),
          trailing: IconButton(
              onPressed: widget.onTap,
              icon: const Icon(
                Icons.delete,
              )),
        ),
      ),
    );
  }
}
