import 'package:flutter/material.dart';
import 'package:kritik_version_2023/components/classEstablishment.dart';
import 'package:kritik_version_2023/components/establishment_data_grid.dart';
import 'package:kritik_version_2023/components/establishment_profile.dart';
import 'package:kritik_version_2023/components/services.dart';

class EstablishmentsGrid extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  EstablishmentsGrid({super.key});

  @override
  State<EstablishmentsGrid> createState() => _EstablishmentsGridState();
}

class _EstablishmentsGridState extends State<EstablishmentsGrid> {
  var restaurants = true;
  var hotels = false;
  var beach = false;
  var populars = false;
  var explore = false;

  //putting initial list into the hivebox and from the hive box putting in in  a list nad filtering it
  final EstablishmentService _establishmentServices = EstablishmentService();

  late List<Establishment> hotelFilter = [],
      restaurantFilter = [],
      beachFilter = [],
      allEstabFilter = [];

  ///using this initState to run this functions only once
  @override
  void initState() {
    super.initState();
    hoFilters();
    restoFilters();
    beachFilters();
    allFilters();
  }

  Future<void> hoFilters() async {
    hotelFilter = await _establishmentServices.getAllEstablishment().then(
        (establishmentList) => establishmentList
            .map((establishment) => establishment)
            .where((establishment) => establishment.category.contains("Hotel"))
            .toList()
            .cast<Establishment>());
    print("hotel called");
    print(hotelFilter.length);

    setState(() {});
  }

  Future<void> allFilters() async {
    allEstabFilter = await _establishmentServices.getAllEstablishment();
    print("all List of establishments");
    print(allEstabFilter.length);

    setState(() {});
  }

  Future<void> restoFilters() async {
    restaurantFilter = await _establishmentServices.getAllEstablishment().then(
        (establishmentList) => establishmentList
            .map((establishment) => establishment)
            .where((establishment) =>
                establishment.category.contains("Restaurant"))
            .toList()
            .cast<Establishment>());
    print("restaurant called");
    print(restaurantFilter.length);

    setState(() {});
  }

  Future<void> beachFilters() async {
    beachFilter = await _establishmentServices.getAllEstablishment().then(
        (establishmentList) => establishmentList
            .map((establishment) => establishment)
            .where((establishment) => establishment.category.contains("Beach"))
            .toList()
            .cast<Establishment>());
    print("beach called");
    print(beachFilter.length);

    setState(() {});
  }

  //filtering establishments. putting them into a new list

  //filtering establishments. putting them into a new list

  //filtering establishments. putting them into a new list

  //for the mean time I will use all the data of the establishments for showing the explore and popular filter while I stil dont have data
  //filtering establishments. putting them into a new list
  // List<Establishment> exploreFilter = establishmentData
  //     .map((establishment) => establishment)
  //     .toList()
  //     .cast<Establishment>()
  //     .where((establishment) => establishment.category.contains("Explore"))
  //     .cast<Establishment>()
  //     .toList();
  //        //filtering establishments. putting them into a new list
  // List<Establishment> popularFilter = establishmentData
  //     .map((establishment) => establishment)
  //     .toList()
  //     .cast<Establishment>()
  //     .where((establishment) => establishment.category.contains("Popular"))
  //     .cast<Establishment>()
  //     .toList();
  // establishmentData.forEach((establishment) {
  //   listOfAllEstablishments.add(establishment);
  // });
  // var filterCategoryList = EstablishmentGridData.map((establishment) => (establishment["Category"])).toList();

  //default value of the displayed list of establishments
  List<Establishment> establishmentDataDisplay = [];
  // establishmentData
  //     .map((establishment) => establishment)
  //     .toList()
  //     .cast<Establishment>()
  //     .where((establishment) => establishment.category.contains("Restaurant"))
  //     .cast<Establishment>()
  //     .toList();

//function to route to the page profile
  Future route(Establishment estabProfile) {
    return Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              EstablishmentProfile(establishment: estabProfile)),
    );
  }

//logic to change the colors of the text button and the list of data to be filtered
  void changeColorNavigation(int num) {
    switch (num) {
      case 1: //for restaurant
        establishmentDataDisplay = restaurantFilter;
        setState(() {
          restaurants = true;
          hotels = false;
          beach = false;
          populars = false;
          explore = false;
        });
        break;
      case 2: //for hotels
        establishmentDataDisplay = hotelFilter;
        setState(() {
          restaurants = false;
          hotels = true;
          beach = false;
          populars = false;
          explore = false;
        });
        break;

      case 3: //for nbeach
        establishmentDataDisplay = beachFilter;
        setState(() {
          restaurants = false;
          hotels = false;
          beach = true;
          populars = false;
          explore = false;
        });
        break;

      case 4: // for populars
        establishmentDataDisplay = allEstabFilter;
        setState(() {
          restaurants = false;
          hotels = false;
          beach = false;
          populars = true;
          explore = false;
        });
        break;

      case 5: //for explore
        establishmentDataDisplay = allEstabFilter;

        setState(() {
          explore = true;
          restaurants = false;
          hotels = false;
          beach = false;
          populars = false;
        });
        break;
      default:
        establishmentDataDisplay = restaurantFilter;

        setState(() {
          explore = false;
          restaurants = true;
          hotels = false;
          beach = false;
          populars = false;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                            style: TextStyle(fontSize: 10, color: Colors.blue))
                        : const Text("Restaurants",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () {
                      changeColorNavigation(2);
                    },
                    child: hotels
                        ? const Text("Hotels",
                            style: TextStyle(fontSize: 10, color: Colors.blue))
                        : const Text("Hotels",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () {
                      changeColorNavigation(3);
                    },
                    child: beach
                        ? const Text("Beach",
                            style: TextStyle(fontSize: 10, color: Colors.blue))
                        : const Text("Beach",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                    onTap: () {
                      changeColorNavigation(5);
                    },
                    child: explore
                        ? const Text("Explore",
                            style: TextStyle(fontSize: 10, color: Colors.blue))
                        : const Text("Explore",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                    onTap: () {
                      changeColorNavigation(4);
                    },
                    child: populars
                        ? const Text("Populars",
                            style: TextStyle(fontSize: 10, color: Colors.blue))
                        : const Text("Populars",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black))),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 480,
          width: 350,
          child:
              //establishments grid V
              GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.80,
            ),
            // itemCount: EstablishmentGridData.length,
            itemCount: establishmentDataDisplay.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  route(establishmentDataDisplay[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Column(
                      children: [
                        //establishment Image
                        Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        // EstablishmentGridData[index]['path']),
                                        establishmentDataDisplay[index]
                                            .pathImage),
                                    fit: BoxFit.cover)),
                            //bookmark and star rating
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 75.0, top: 7, bottom: 80),
                                  child:
                                      Image.asset("assets/images/bookmark.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Image.asset(
                                      "assets/images/starRating.png"),
                                )
                              ],
                            )),
                        //Establishments Name, Location and Location symbol
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset("assets/images/locationSmallRed.png"),
                              Column(
                                children: [
                                  Text(
                                    establishmentDataDisplay[index].name,
                                    // EstablishmentGridData[index]['name'],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    establishmentDataDisplay[index].location,
                                    // EstablishmentGridData[index]['location'],
                                    style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
// pag add og input sa hivebox nya i retrives sa hivebox then i post diri

