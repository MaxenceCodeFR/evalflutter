import 'package:flutter/material.dart';
import 'navbar.dart';
import 'chart.dart';


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
                  Expanded(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class DashboardCenterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCard(context, 'All Orders', 5, Colors.cyan, 0.8),
          _buildCard(context, 'Packaging', 3, Colors.yellow, 0.5),
          _buildCard(context, 'Delivered', 1, Colors.blue, 0.2),
          _buildCard(context, 'Completed', 1, Colors.green, 0.1),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, int count, Color color, double progress) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Color.fromRGBO(42, 45, 62, 1),
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(16),

        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.file_copy, color: color),
                Icon(Icons.more_vert, color: Colors.grey,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(title, style: TextStyle(color: Colors.white, fontSize: 30))),
              ],
            ),
            LinearProgressIndicator(value: progress, backgroundColor: color.withAlpha(50), valueColor: AlwaysStoppedAnimation(color)),
            Container(
              margin: EdgeInsets.only(top: 25, left: 10),

              child: Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  color: Colors.transparent,
                  shape: CircleBorder(),
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: color.withAlpha(20),
                          spreadRadius: 8,
                          blurRadius: 0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                      child: Text('$count',
                        style: TextStyle(
                          color: color,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

