import 'package:balance_app/views/myhome.dart';
import 'package:balance_app/views/settings.dart';
import 'package:balance_app/views/statistic.dart';
import 'package:balance_app/views/wallet.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentpage = 0;
  List pages = const [
    WalletPage(),
    MyHomePage(),
    StatisticPage(),
    SettingsPage()
  ];
  GlobalKey<CurvedNavigationBarState> _curvednavigationkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(const Radius.circular(999)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 255, 194, 214),
                Color.fromARGB(255, 190, 226, 255)
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: const Column(),
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
                    children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.all(30),
                height: 170,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 255, 96, 149),
                    Color.fromARGB(255, 107, 188, 255)
                  ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 191, 190, 190),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Balance",
                            style: TextStyle(color: Colors.white, fontSize: 18)),
                        //SvgPicture.asset("assets/svg/mastercard.svg")
                      ],
                    ),
                    Text(
                      "\$293,214",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("4291", style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("5432", style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("3218", style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("4563", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Text("02/25", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 270,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 210, 209, 209),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Last Activity",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          TextButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => StatisticPage()));
                          }, 
                          child: const Text('See all'))
                        ],
                      ),
                      ListTile(
                        leading: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 196, 252, 198),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          height: 40,
                          width: 40,
                          child: const Icon(Icons.shopping_bag, color: Colors.green,),
                        ),
                        title: const Text("Shopping", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        subtitle: const Text("May 21, 3:21 pm", style: TextStyle(fontSize: 12)),
                        trailing: const Text("-\$118", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      ListTile(
                        leading: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 211, 233, 251),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          height: 40,
                          width: 40,
                          child: const Icon(Icons.work, color: Colors.blue,),
                        ),
                        title: const Text("Freelance designer", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                        subtitle: const Text("May 21, 2:39 pm", style: TextStyle(fontSize: 12)),
                        trailing: const Text("-\$118", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      ListTile(
                        leading: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 254, 198, 217),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          height: 40,
                          width: 40,
                          child: const Icon(Icons.grid_view, color: Colors.pink,),
                        ),
                        title: const Text("Movie", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                        subtitle: const Text("May 21, 2:41 pm",style: TextStyle(fontSize: 12)),
                        trailing: const Text("-\$118", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            )
                    ],
                  ),
          )),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(999))),
        child: CurvedNavigationBar(
          key: _curvednavigationkey,
          items: const [
            Icon(
              Icons.home,
              size: 33,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 33,
              color: Colors.white,
            ),
            Icon(
              Icons.add,
              size: 33,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              size: 33,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              size: 33,
              color: Colors.white,
            ),
          ],
          color: Colors.black,
          buttonBackgroundColor: const Color.fromARGB(255, 255, 128, 170),
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
/* ListTile(
                          leading: Container(
                            height: 60,
                            width: 60,
                            child: const Icon(Icons.leave_bags_at_home),
                          ),
                          title: const Text("Shopping"),
                          subtitle: const Text("May 21, 2:21 pm"),
                          trailing: const Text("-\$118"),
                        ),
                        ListTile(
                          leading: Container(
                            height: 60,
                            width: 60,
                            child: const Icon(Icons.leave_bags_at_home),
                          ),
                          title: const Text("Shopping"),
                          subtitle: const Text("May 21, 2:21 pm"),
                          trailing: const Text("-\$118"),
                        ),
                        ListTile(
                          leading: Container(
                            height: 60,
                            width: 60,
                            child: const Icon(Icons.leave_bags_at_home),
                          ),
                          title: const Text("Shopping"),
                          subtitle: const Text("May 21, 2:21 pm"),
                          trailing: const Text("-\$118"),
                        ) */