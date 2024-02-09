import 'package:flutter/material.dart';
import 'dart:math' as math;

class NavigationSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Color.fromRGBO(42, 45, 62, 1),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            child: CircleAvatar(
                backgroundColor: Colors.cyan,
                maxRadius: 70,
                child: Transform.rotate(angle: -math.pi / 4,
                  child: Text('E', style: TextStyle(fontSize: 70, color: Colors.white,),) ,)
            ),
          ),
          Divider(thickness: 2,color: Colors.white12),
          ListTile(
            leading: Icon(Icons.dashboard, color: Colors.white),
            title: Text('Dashboard', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.white),
            title: Text('Orders', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.list, color: Colors.white),
            title: Text('Products', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white),
            title: Text('Logout', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}