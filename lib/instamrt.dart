import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*     Row(
          children: [
            Icon(Icons.group),
            Text(
              "Sankari priya",
            ),
            Icon(Icons.keyboard_arrow_down),
            Spacer(),
            Icon(Icons.person),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("4/97"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Text("search for milk"),
              Spacer(),
              Icon(Icons.search),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),*/
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            children: [
              Text(
                "instamart",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text("Delivering in"),
                  Text(
                    "34 Mins",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 0.5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            children: [
              Text("Due to high demand delivery times are\n higher than usual"),
              SizedBox(
                width: 60,
              ),
              Image.asset(
                "assets/images/pngwing.com.png",
                width: 40,
                height: 40,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Special offers for you",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.w900),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "FREE DELIVERY",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "On orders above rs40!",
                            style: TextStyle(
                                color: Colors.brown.withOpacity(0.5),
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.add),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("FLAT RS100 OFF",
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          Text(
                            "Use code HELLOIM",
                            style: TextStyle(
                                color: Colors.brown.withOpacity(0.5),
                                fontSize: 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot deals"),
                  Icon(Icons.arrow_forward),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text("upto 50% off"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(0),
                itemCount: 4,
                itemBuilder: (context, chair) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/Cheese Pizza.jpg",
                          width: 60,
                          height: 60,
                        ),
                        Text("Carrot,(Gajar)"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("500 g"),
                                Text(
                                  "128",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text("rs 26"),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(onPressed: () {}, child: Text("Add"))
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.brown,
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 30, left: 30, right: 30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: SizedBox(
                    width: 20,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "GET READY FOR",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "GANAESH CHATURTHI",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Enjoy Rs.100% off+Free delivery\n on special festive collection",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/a2b.png",
                              fit: BoxFit.cover,
                              width: 20,
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/ganesh.png",
                              width: 85,
                              height: 90,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
