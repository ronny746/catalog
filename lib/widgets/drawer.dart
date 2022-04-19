import 'package:catalog/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {

  String name ,email;

  MyDrawer({@required this.name, @required this.email});
  @override
  Widget build(BuildContext context) {
    print(name);
    print(email);
    return Drawer(
      child: Container(
        color: context.theme.cardColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Rohit Rana"),
                accountEmail: Text("rkrna6631@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/rana.jpg"),
                ),
              ),
            ),
            ListTile(
              onTap: (){
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              leading: Icon(
                CupertinoIcons.home,
                color: context.theme.cursorColor,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.cursorColor,
                ),
              ).text.bold.make(),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: context.theme.cursorColor,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.cursorColor,
                ),
              ).text.bold.make(),
            ),
             ListTile(
               onTap: (){
                 Navigator.pushNamed(context, MyRoutes.Myabout);
               },
              leading: Icon(
                Icons.info_sharp,
                color: context.theme.cursorColor,
              ),
              title: Text(
                "about us",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.cursorColor,
                ),
              ).text.bold.make(),
            ),
             ListTile(
               onTap: (){
                 Navigator.pushNamed(context, MyRoutes.loginRoute);
               },
              leading: Icon(
                Icons.logout,
                color: context.theme.cursorColor,
              ),
              title: Text(
                "LogOut",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.cursorColor,
                ),
              ).text.bold.make(),
            ),
          ],
        ),
      ),
    );
  }
}
