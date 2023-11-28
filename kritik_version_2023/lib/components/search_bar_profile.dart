import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarAndProfile extends StatefulWidget {
  const SearchBarAndProfile({super.key});

  @override
  State<SearchBarAndProfile> createState() => _SearchBarAndProfileState();
}

class _SearchBarAndProfileState extends State<SearchBarAndProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SvgPicture.asset(
                "assets/images/locationIcon.svg",
                height: 30,
                width: 28.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17, right: 10),
              child: Container(
                  height: 24,
                  width: 245,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black))),
                  child: const Text(
                    "Cebu, Philippines",
                    style: TextStyle(fontSize: 17),
                  )),
            ),
            Container(
              height: 43,
              width: 43,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset("assets/images/profile1.png"),
            ),
          ],
        )
      ],
    );
  }
}
