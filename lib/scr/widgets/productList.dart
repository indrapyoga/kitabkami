import 'package:flutter/material.dart';
import 'package:food_app/scr/models/product.dart';
import 'package:food_app/scr/widgets/custom_text.dart';

import '../commons.dart';

List<Product> productList = [
  Product(
      name: "IQRO",
      image: "images/1.png",
      rating: 5.99,
      price: 19.99,
      wishList: true,
      vendor: "GoodFood"),
  Product(
      name: "Hadits",
      image: "images/2.png",
      rating: 4.8,
      price: 9.99,
      wishList: false,
      vendor: "good"),
  Product(
      name: "Fiqih",
      image: "images/3.png",
      rating: 4.8,
      price: 9.99,
      wishList: false,
      vendor: "good")
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280,
                width: 220,
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: Colors.green[50],
                      offset: Offset(15, 5),
                      blurRadius: 30)
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            productList[index].image,
                            height: 140,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CustomText(
                                text: productList[index].name,
                                colors: grey,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: green,
                                              offset: Offset(1, 1),
                                              blurRadius: 4)
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: productList[index].wishList
                                          ? Icon(
                                              Icons.favorite,
                                              size: 16,
                                              color: green,
                                            )
                                          : Icon(
                                              Icons.favorite_border,
                                              size: 16,
                                              color: green,
                                            ),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  CustomText(
                                      text:
                                          productList[index].rating.toString(),
                                      colors: grey),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.star,
                                    color: green,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: green,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: green,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: green,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                              CustomText(
                                  text: productList[index].price.toString())
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
