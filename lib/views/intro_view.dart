import 'package:flutter/material.dart';
import 'package:shop/widgets/into_view_body_widget.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: const Padding(
        padding: EdgeInsets.all(25.0),
        child: IntroViewBody(),
      ),
    );
  }
}
