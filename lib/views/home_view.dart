import 'package:flutter/material.dart';
import 'package:shop/widgets/custom_drawer_widget.dart';

import '../constants.dart';
import '../widgets/bottom_nav_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _selectedIndex = 0;
  void _updateIndex(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            color: Colors.grey.shade900,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: MyNavBottom(
        onTapChange: (index) => _updateIndex(index),
      ),
      body: pagesNavigation[_selectedIndex],
    );
  }
}
