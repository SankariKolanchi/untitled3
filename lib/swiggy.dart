import 'package:flutter/material.dart';

class Swiggy extends StatelessWidget {
  const Swiggy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Remove the SizedBox at the top
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Icon(Icons.food_bank),
                          ],
                        ),
                      ),
                      Text('Food'),
                    ],
                  ),
                ),
            ],
          ),
          // Remove the SizedBox at the bottom
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.refresh,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Refer friends & earn upto ',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(
                        Icons.currency_rupee_sharp,
                        color: Colors.red,
                        size: 16,
                      ),
                      Text(
                        '2500',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  TextButton(onPressed: () {}, child: const Text("Sakthi"))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 220,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.local_mall_outlined, size: 45),
                          const SizedBox(height: 10),
                          const Text(
                            'Instamart',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Free delivery in 10 mins',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Get fast 100% off fruits and veggies',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Buy now',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
