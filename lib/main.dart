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
                              maxWidth: 350, // Définissez la largeur maximale de la Card ici.
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
                  DashboardCenterContent(),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 350
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





