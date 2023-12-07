import 'package:flutter/material.dart';
import 'package:kritik_version_2023/components/classEstablishment.dart';

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
        body: Column(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.establishment.pathImage),
                  fit: BoxFit.cover)),
        )
      ],
    ));
  }
}
