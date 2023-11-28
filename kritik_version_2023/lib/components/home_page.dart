import 'package:flutter/material.dart';
import 'package:kritik_version_2023/components/establishment_grid.dart';
import 'package:kritik_version_2023/components/search_bar_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var restaurants = true;
  var hotels = false;
  var beach = false;
  var populars = false;
  var explore = false;

  void changeColorNavigation(int num) {
    switch (num) {
      case 1: //for restaurant
        setState(() {
          restaurants = true;
          hotels = false;
          beach = false;
          populars = false;
          explore = false;
        });
      case 2: //for hotels
        setState(() {
          restaurants = false;
          hotels = true;
          beach = false;
          populars = false;
          explore = false;
        });
      case 3: //for nbeach
        setState(() {
          restaurants = false;
          hotels = false;
          beach = true;
          populars = false;
          explore = false;
        });
      case 4: // for populars
        setState(() {
          restaurants = false;
          hotels = false;
          beach = false;
          populars = true;
          explore = false;
        });
      case 5: //for explore
        setState(() {
          explore = true;
          restaurants = false;
          hotels = false;
          beach = false;
          populars = false;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: SearchBarAndProfile(),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: 50,
            width: 330,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                      onTap: () {
                        changeColorNavigation(1);
                      },
                      child: restaurants
                          ? const Text("Restaurants",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue))
                          : const Text("Restaurants",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                      onTap: () {
                        changeColorNavigation(2);
                      },
                      child: hotels
                          ? const Text("Hotels",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue))
                          : const Text("Hotels",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                      onTap: () {
                        changeColorNavigation(3);
                      },
                      child: beach
                          ? const Text("Beach",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue))
                          : const Text("Beach",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: GestureDetector(
                      onTap: () {
                        changeColorNavigation(5);
                      },
                      child: explore
                          ? const Text("Explore",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue))
                          : const Text("Explore",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: GestureDetector(
                      onTap: () {
                        changeColorNavigation(4);
                      },
                      child: populars
                          ? const Text("Populars",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue))
                          : const Text("Populars",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black))),
                ),
              ],
            ),
          ),
          const EstablishmentsGrid(),
        ]),
      ),
    );
  }
}
