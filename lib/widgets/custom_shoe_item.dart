// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shop/models/shoe_model.dart';

class CustomShoeTile extends StatelessWidget {
  const CustomShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  final Shoe shoe;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: const EdgeInsets.only(left: 16),
        width: 280,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(9, 9),
              blurRadius: 20,
              color: Colors.grey.shade700,
              spreadRadius: -17,
              blurStyle: BlurStyle.solid,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                shoe.image,
                //color: Colors.transparent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                shoe.description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey[600], fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "\$${shoe.price}",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
