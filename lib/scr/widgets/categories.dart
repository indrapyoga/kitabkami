import 'package:flutter/material.dart';

import 'package:food_app/scr/commons.dart';
import 'package:food_app/scr/models/category.dart';
import 'package:food_app/scr/widgets/custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Ushul Tafsir", image: "images/tafsir.png"),
  Category(name: "Tafsir Al-Quran", image: "images/fiqih.png"),
  Category(name: "Ushul Fiqih", image: "images/1.png"),
  Category(name: "Qowaid Fiqih", image: "images/2.png"),
  Category(name: "Sanad", image: "images/3.png"),
  Category(name: "Tauhid", image: "images/4.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Container Detector");
      },
      child: Container(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(color: white, boxShadow: [
                        BoxShadow(
                            color: Colors.green[300],
                            offset: Offset(4, 6),
                            blurRadius: 20),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          categoriesList[index].image,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    text: categoriesList[index].name,
                    colors: grey,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
