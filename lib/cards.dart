import 'package:flutter/material.dart';


class DashboardCenterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCard(context, 'All Orders', 5, Colors.cyan,1),
          _buildCard(context, 'Packaging', 3, Colors.yellow, 0.6),
          _buildCard(context, 'Delivered', 1, Colors.blue, 0.2),
          _buildCard(context, 'Completed', 1, Colors.green, 0.2),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, int count, Color color, double progress) {
    return Container(
      margin: EdgeInsets.only(left: 6),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color.fromRGBO(42, 45, 62, 1),
        elevation: 10,
        margin: EdgeInsets.all(8),
        child: Container(
          width: 300,
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: color.withAlpha(20),
                            spreadRadius: 10,
                            blurRadius: 0,
                          ),
                        ],
                      ),
                      child: Icon(Icons.file_copy, color: color)
                  ),
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
      ),
    );
  }
}
































































































































































































































