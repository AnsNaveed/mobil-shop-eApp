import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.red),
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Ans Naeed"),
                  accountEmail: Text("ansnaveed055@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      imageUrl,
                    ),
                  ))),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text(
              "Email  Me",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
