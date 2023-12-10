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
      //background of teh sliding panel
      body: Column(
        children: [
          Container(
            width: 360,
            height: 455,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.establishment.pathImage),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 300,
            width: 300,
          )
        ],
      ),
      //properties of the sliding panel
      maxHeight: 700, //maxheight
      minHeight: 410, //deafult height or height when close
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35), topRight: Radius.circular(35)),
      panelBuilder: (controller) => SizedBox(
        width: 360,
        height: 450,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 10),
            child: SizedBox(
              width: 310,
              height: 50,
              child: Text(
                widget.establishment.name,
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
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
              child: SizedBox(
            height: 90,
            width: 320,
            child: Text(
              widget.establishment.description,
              style: const TextStyle(fontSize: 11),
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(right: 165, top: 5),
            child: Text(
              "Explore The Area",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
              height: 120,
              width: 346,
              child: Image.asset(
                "assets/images/mapClickable.png",
              )),
          const Padding(
            padding: EdgeInsets.only(right: 285),
            child: Text(
              "Address:",
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 225),
            child: Text(
              widget.establishment.address,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 0),
            child: Center(
              child: Text("Reviews",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
          ),
          SizedBox(
            height: 286,
            width: 360,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                height: 286,
                width: 360,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 249, 175, 64),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 190, top: 20, bottom: 10),
                      child: Text(
                        "KRITIK says...",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                        height: 100,
                        width: 330,
                        child: Text(
                          "${widget.establishment.name} is a hidden gem that combines exceptional coffee with an inviting ambiance, creating a delightful haven for coffee lovers and social butterflies alike. The rich and diverse menu offers a symphony of flavors, from robust espresso blends to meticulously crafted pour-over selections. Each sip is a journey through the nuances of high-quality beans, expertly brewed by skilled baristas. Users happily commended the ambiance at Uncle Brew, it is a harmonious blend of rustic charm and modern comfort. ",
                          style: const TextStyle(fontSize: 9),
                        )),
                    //for sentiment SCore
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40, right: 50),
                          child: Text("Positive Sentiment Score",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 246, 92, 174))),
                        ),
                        Text(
                          "Negative Sentiment Score",
                          style: TextStyle(
                              fontSize: 9,
                              color: Color.fromARGB(255, 92, 148, 246)),
                        )
                      ],
                    ),
                    //for percentage
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 60, right: 100),
                            child: Text("87%",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 246, 92, 174))),
                          ),
                          Text("23%",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 92, 148, 246)))
                        ],
                      ),
                    ),
                    //for pros and cons
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 90, left: 55),
                            child: Text("Pros>",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 246, 92, 174))),
                          ),
                          Text("Cons>",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 92, 148, 246)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 286,
                width: 360,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 231, 228, 228),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 260.0,
                      ),
                      child: InkWell(
                          onTap: () {
                            print("clicked");
                          },
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child:
                                  Image.asset("assets/images/plusButton.png"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: SizedBox(
                          height: 215,
                          width: 360,
                          child: ListView.builder(
                            controller: controller,
                            itemCount: widget.establishment.reviews.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Column(
                                  children: [
                                    //profile image part of the review, star rating and name
                                    Row(
                                      children: [
                                        Container(
                                          height: 43,
                                          width: 43,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              image: DecorationImage(
                                                  image: AssetImage(widget
                                                      .establishment
                                                      .reviews[index]
                                                      .imagePath))),
                                        ),
                                        //names and star rating
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 30),
                                              child: SizedBox(
                                                height: 20,
                                                width: 100,
                                                child: Text(widget.establishment
                                                    .reviews[index].name),
                                              ),
                                            ),
                                            Image.asset(
                                                "assets/images/starRatingFilled.png")
                                          ],
                                        )
                                      ],
                                    ),
                                    //review or the comment of the user
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10, right: 30),
                                      child: SizedBox(
                                        width: 300,
                                        child: Text(widget.establishment
                                            .reviews[index].reviewComment),
                                      ),
                                    ),
                                    Row(children: [
                                      SizedBox(
                                        height: 100,
                                        width: 300,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: SizedBox(
                                                height: 70,
                                                width: 100,
                                                child: Image.asset(
                                                  "assets/images/chowi.png",
                                                  height: 70,
                                                  width: 100,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: SizedBox(
                                                height: 70,
                                                width: 100,
                                                child: Image.asset(
                                                  "assets/images/chowi.png",
                                                  height: 70,
                                                  width: 150,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: SizedBox(
                                                height: 70,
                                                width: 100,
                                                child: Image.asset(
                                                  "assets/images/chowi.png",
                                                  height: 70,
                                                  width: 150,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ])
                                  ],
                                ),
                              );
                            },
                          )),
                    ),
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    ));
  }
}

// class PanelScrollableWidget {}
