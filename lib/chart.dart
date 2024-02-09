import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'indicator.dart';



class OrderStatusChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Color.fromRGBO(42, 45, 62, 1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Order Status',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(top: 20),
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 60,
                        color: Colors.yellow,
                        title: '60%',
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: Colors.blue,
                        title: '20%',
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: Colors.green,
                        title: '20%',
                        radius: 50,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Indicator(
                    color: Colors.yellow,
                    text: 'Packaging',
                    isSquare: false,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Indicator(
                    color: Colors.blue,
                    text: 'Delivered',
                    isSquare: false,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Indicator(
                    color: Colors.green,
                    text: 'Completed',
                    isSquare: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class TopSellingProductsChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Color.fromRGBO(42, 45, 62, 1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Top Products',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(top: 20),
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 30,
                        color: Colors.deepOrange,
                        title: '5',
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: Colors.blue,
                        title: '4',
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: Colors.pinkAccent,
                        title: '3',
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 10,
                        color: Colors.yellowAccent,
                        title: "3",
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 5,
                        color: Colors.green,
                        title: "1",
                        radius: 50,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Indicator(
                    color: Colors.deepOrange,
                    text: 'Nike Kids',
                    isSquare: true,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Indicator(
                    color: Colors.blue,
                    text: 'Adidas Copa',
                    isSquare: true,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Indicator(
                    color: Colors.pinkAccent,
                    text: 'Nike FC',
                    isSquare: true,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Indicator(
                    color: Colors.yellowAccent,
                    text: 'Adidas FC',
                    isSquare: true,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Indicator(
                    color: Colors.green,
                    text: 'Nike Paris',
                    isSquare: true,
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

