import 'package:flutter/material.dart';
import 'package:food_app/scr/commons.dart';
import 'package:food_app/scr/widgets/categories.dart';
import 'package:food_app/scr/widgets/custom_text.dart';
import 'package:food_app/scr/widgets/productList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: 'Buku apa yang ingin kamu baca?',
                    colors: black,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 10,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ],
            ),

            // search
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 4)
              ]),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: green,
                ),
                title: TextField(
                    decoration: InputDecoration(
                        hintText: "Cari buku", border: InputBorder.none)),
                trailing: Icon(
                  Icons.filter_list,
                  color: green,
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            Categories(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured",
                // size: 18,
                colors: grey,
              ),
            ),

            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Popular",
                // size: 18,
                colors: grey,
              ),
            ),

            ///Popular
            Padding(
              padding: const EdgeInsets.all(2),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                        child: Image.asset("images/7.jpg"),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: red,
                                size: 20,
                              ),
                              onPressed: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow[900],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CustomText(text: "4.7"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ])),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Atsarul Hadist Assyarif\nfi ikhtilaf Alfuqoha\n",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "Syaikh Muhammad Awwamah",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          color: green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                child: Icon(
                  Icons.home_filled,
                  size: 25,
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      size: 25,
                      color: red,
                    ),
                    onPressed: () {})),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                Icons.account_circle,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
