import 'package:flutter/material.dart';
import 'package:untitled3/swiggy.dart';

import 'food.dart';
import 'instamrt.dart';

class Empty extends StatefulWidget {
  const Empty({super.key});

  @override
  State<Empty> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Empty> {
  int _selectedTab = 0;

  final List _pages = [
    const Center(
      child: Text("Swiggy"),
    ),
    const Center(
      child: Text("Food"),
    ),
    const Center(
      child: Text("Instamart"),
    ),
    const Center(
      child: Text("Contact"),
    ),
    const Center(
      child: Text("DineOut"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        title: const Column(
          children: [
            Row(children: [
              Icon(
                Icons.groups_2,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Sankari  priya",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_down),
              Spacer(),
              Icon(
                Icons.person,
                size: 40,
              ),
            ]),
            Text(
              "4/97 north street variyankaval(po),ariyalur(dt),tamilandu 621806",
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedTab == 0
                        ? "Dishes, Restaturants, groceries-Find"
                        : (_selectedTab == 1
                            ? "Find groceries, restaurants, and more on Instamart"
                            : "Ganesh idol search for"),
        /*            style: TextStyle(
                      color: Colors.black,
                      backgroundColor: _selectedTab == 2
                          ? Colors.blueGrey.withOpacity(0.8)
                          : Colors.transparent,
                    ),*/
                  ),
                  Row(
                    children: [
                      Icon(Icons.search),
                      VerticalDivider(
                        thickness: 0.3,
                      ),
                      Icon(
                        Icons.mic,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: (_selectedTab == 0
              ? Swiggy()
              : (_selectedTab == 1 ? Food() : Example3()))),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(color: Colors.grey.shade300),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_rounded),
              label: 'Swiggy',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Food',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              label: 'Instamart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dinner_dining_outlined),
              label: 'DineOut',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.generating_tokens),
              label: 'Genie',
            )
          ]),
    );
  }
}
