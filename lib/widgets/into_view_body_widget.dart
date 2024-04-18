import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/widgets/custom_button_widget.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 0,
        ),
        Image.asset(
          "assets/images/pngimg.com - nike_PNG18.png",
          height: 280,
        ),
        const SizedBox(
          height: 75,
        ),
        Text(
          "Just Do it",
          style: TextStyle(
            fontSize: 23,
            color: Colors.grey[850],
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        const Text(
          "Brand new sneakers and customkicks made with premium quality",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 60,
        ),
        GestureDetector(
            onTap: () => Navigator.pushNamed(context, khomePage),
            child: const CustomButton(title: "Shop Now"))
      ],
    );
  }
}
