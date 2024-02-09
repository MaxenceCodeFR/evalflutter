import 'package:flutter/material.dart';
import 'navbar.dart';
import 'chart.dart';
import 'cards.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 35, 50, 1),
      body: SafeArea(
        child: Row(
          children: [
            NavigationSidebar(),
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 30, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Dashboard',
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 350,
                            ),
                            child: Container(
                              child: Card(
                                color: Color.fromRGBO(42, 45, 62, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.white70,
                                    maxRadius: 20,
                                  ),
                                  title: Text('maxence.hattabi@gmail.com', style: TextStyle(color: Colors.white, fontSize: 15)),
                                  trailing: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 30, bottom: 15, left: 10),
                          child: Text('Orders',style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                      ),
                      DashboardCenterContent(),
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 370
                    ),
                    child: Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: OrderStatusChart()
                          ),
                          Expanded(
                              child: TopSellingProductsChart()
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





