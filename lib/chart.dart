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
                height: 20,
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
/////////////////////////////////////////////
//J'AVOUE QUE J'AI PAS COMPRIS CETTE PARTIE//
//Mais je voulais absolument mettre les indicators//
///////////////////////////////////////////
class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    this.isSquare = true,
    this.size = 16,
    this.textColor = const Color(0xffffffff),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
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

