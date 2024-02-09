import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


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
              Text('Order Status', style: TextStyle(color: Colors.white, fontSize: 15),),
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
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Color.fromRGBO(42, 45, 62, 1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            barGroups: [
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(toY: 5, color: Colors.pink)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

