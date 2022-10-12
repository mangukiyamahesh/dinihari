import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<IconData> iconList = [
    Icons.ramen_dining,
    Icons.lunch_dining,
    Icons.icecream,
    Icons.sports_bar,
    Icons.local_pizza,
  ];

  List<String> categoryItems = [
    "Noodles",
    "Burger",
    "Desert",
    "Drink",
    "Pizza",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  iconList.length,
                      (index) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  offset: Offset(2, 2))
                            ],
                            borderRadius: BorderRadius.circular(26)),
                        child: Icon(
                          iconList[index],
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(categoryItems[index])
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
