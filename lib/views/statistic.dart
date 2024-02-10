import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(color: Colors.black),
          child: Column(
            children: [
              Column(
                children: [
                  Row(children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 69, 69, 69),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text("Statistic",
                        style: TextStyle(color: Colors.white, fontSize: 18))
                  ]),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Total Balance",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("\$452,232",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 69, 69, 69),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 80,
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: const Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Income",
                                      style: TextStyle(color: Colors.white)),
                                  Text("\$321,102",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 69, 69, 69),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 80,
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              height: 30,
                              width: 30,
                              child: const Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Outcome",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text("\$120,00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 255, 96, 149),
                                    Color.fromARGB(255, 107, 188, 255)
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight),
                            ),
                            child: const Row(children: [
                              Text("Incomne",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14)),
                              Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              )
                            ]),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Month",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 116, 110, 110))),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Week",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 210, 210, 210))),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Day",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 210, 210, 210)))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          child: LineChart(LineChartData(
                              minX: 0,
                              maxX: 11,
                              minY: 0,
                              maxY: 70000,
                              titlesData: const FlTitlesData(
                                show: false,
                              ),
                              gridData: FlGridData(
                                show: false,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                      color: Colors.grey[800], strokeWidth: 1);
                                },
                              ),
                              borderData: FlBorderData(
                                  show: false,
                                  border: Border.all(
                                      color: Colors.blueGrey, width: 2)),
                              lineBarsData: [
                                LineChartBarData(
                                    spots: [
                                      const FlSpot(0, 50000),
                                      const FlSpot(2.5, 35000),
                                      const FlSpot(4, 60000),
                                      const FlSpot(6, 43000),
                                      const FlSpot(8, 50000),
                                      const FlSpot(9, 30000),
                                      const FlSpot(11, 38000),
                                    ],
                                    isCurved: true,
                                    color:
                                        const Color.fromARGB(255, 46, 157, 247),
                                    barWidth: 2,
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: const Color.fromARGB(
                                          255, 205, 229, 248),
                                    ))
                              ])),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 20,
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 80,
                              width: 280,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 84, 84, 84),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const Icon(Icons.arrow_back,
                                        color: Colors.white),
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Set your budget",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Take control your personnel budget",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 6,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 8,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 12,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
