import 'package:flutter/material.dart';
import 'package:kritik_version_2023/serverside/classEstablishment.dart';
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
      //background of teh sliding panel
      body: Container(
        width: 0,
        height: 0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.establishment.pathImage),
                fit: BoxFit.cover)),
      ),
      //properties of the sliding panel
      maxHeight: 700, //maxheight
      minHeight: 460, //deafult height or height when close
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35), topRight: Radius.circular(35)),
      //panel with Listview inside it to enable scrollable feature
      panelBuilder: (controller) => Column(
        children: [
          ListView(
            controller: controller,
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Text(
                  widget.establishment.name,
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/stars.png",
                      height: 30,
                    ),
                    const Text(
                      "5.0",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
              ),
              Center(
                  child: Container(
                height: 130,
                width: 320,
                child: Text(widget.establishment.description),
              )),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Explore The Area",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  height: 120,
                  width: 100,
                  child: Image.asset(
                    "assets/images/mapClickable.png",
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Address:",
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  widget.establishment.location,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text("Reviews",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
              ),

              //second listview for the padding
              // Container(
              //   height: 236,
              //   width: 100,
              //   child: ListView(scrollDirection: Axis.horizontal, children: [
              //     //for the AI Synthesize
              //     Container(
              //       height: 236,
              //       width: 360,
              //       decoration: const BoxDecoration(
              //           color: Colors.blue,
              //           borderRadius: BorderRadius.only(
              //               topLeft: Radius.circular(35),
              //               topRight: Radius.circular(35))),
              //     ),
              //     Container(
              //       height: 236,
              //       width: 360,
              //       decoration: const BoxDecoration(
              //           color: Colors.red,
              //           borderRadius: BorderRadius.only(
              //               topLeft: Radius.circular(35),
              //               topRight: Radius.circular(35))),
              //     ),
              //   ]),
              // )
            ],
          ),
        ],
      ),
    ));
  }
}

// class PanelScrollableWidget {}
