import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import "package:kritik_version_2023/components/establishment_data_grid.dart";
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class EstablishmentsGrid extends StatelessWidget {
  const EstablishmentsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // var filterCategoryList = EstablishmentGridData.map((establishment) => (establishment["Category"])).toList();
    return Container(
      height: 520,
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
          return Padding(
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
                                  establishmentDataDisplay[index].pathImage),
                              fit: BoxFit.cover)),
                      //bookmark and star rating
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 75.0, top: 7, bottom: 80),
                            child: Image.asset("assets/images/bookmark.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Image.asset("assets/images/starRating.png"),
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
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              establishmentDataDisplay[index].location,
                              // EstablishmentGridData[index]['location'],
                              style: const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
