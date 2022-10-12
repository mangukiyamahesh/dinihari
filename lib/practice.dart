import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  List<Map<String, dynamic>> list = [
    {"image": "assets/images/mobile.png", "name": "Mobile", "Price": "\$2000"},
    {"image": "assets/images/charger.png", "name": "charger", "Price": "\$100"},
    {"image": "assets/images/headset.png", "name": "Headset", "Price": "\$100"},
    {"image": "assets/images/wechat.png", "name": "Wechat", "Price": "\$50"},
    {"image": "assets/images/three.png", "name": "Three", "Price": "\$20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          5,
          (index) => Center(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        list[index]["image"],
                      ),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
                Text(
                  list[index]["name"],
                ),
                Text(
                  list[index]["Price"],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
