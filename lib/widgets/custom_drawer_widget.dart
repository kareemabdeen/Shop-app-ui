import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      shape: const Border.fromBorderSide(BorderSide.none),
      child: Column(
        children: [
          DrawerHeader(
            curve: Curves.decelerate,
            // curve: Curves.easeInQuad,
            decoration: BoxDecoration(
              border: Border(
                right: Divider.createBorderSide(
                  context,
                  color: Colors.transparent,
                  width: 35,
                ),
                left: Divider.createBorderSide(
                  context,
                  color: Colors.transparent,
                  width: 35,
                ),
              ),
            ),
            child: Image.asset(
              kNikeLogo,
              fit: BoxFit.contain,
              height: 300,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10 / 3, 145, 0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              trailing: Text("Home",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10 / 3, 145, 0),
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              trailing: Text("About",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 145, 15),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              trailing: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
