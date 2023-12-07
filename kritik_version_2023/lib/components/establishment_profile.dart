import 'package:flutter/material.dart';
import 'package:kritik_version_2023/components/classEstablishment.dart';
import 'package:kritik_version_2023/components/establishment_data_grid.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class EstablishmentProfile extends StatefulWidget {
  final Establishment establishment;
  const EstablishmentProfile({required this.establishment, super.key});

  @override
  State<EstablishmentProfile> createState() => _EstablishmentProfileState();
}

class _EstablishmentProfileState extends State<EstablishmentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      body: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.establishment.pathImage),
                fit: BoxFit.cover)),
      ),
      panel: Column(
        children: [
          Center(
            child: Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(widget.establishment.description),
            ),
          )
        ],
      ),
      maxHeight: 700,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35), topRight: Radius.circular(35)),
    ));
  }
}
