import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 650,
                width: 350,
                //color: Colors.black,
                child: Column(
                 children: [
                   Image.asset(
                    "assets/images/profilepageprofile.png",
                    height: 180,
                    width: 180,
                    ),
                    const Text(
                      'Angela Ziegler',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35
                      ),
                      ),
                      const Text(
                      'Top Contributor',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        color: Color(0xffFC9E4F)
                      ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: const Color(0xffFC9E4F),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                      
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                'Reviews',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 25
                                ),
                                ),
                                Text(
                                '1563',
                                style: TextStyle(
                                  color: Color(0xff07A0C3),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                                ),
                                
                                ),
                          ],
                        ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0), 
                                      ),
                          Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                 image: const AssetImage('assets/images/seol.jpg'),
                                 fit: BoxFit.cover,
                                 colorFilter: ColorFilter.mode(
                                   Colors.grey.withOpacity(0.25),
                                     BlendMode.overlay,
                                      ),
                                    ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Photos',
                          style: TextStyle(
                            color: Color(0xffE40066),
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),
                          ),
                      ),
                     
                        ],
                      ),
                      
                    ),
                         const Text(
                      'Recent Reviews',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                      ),
                      ),
                 ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
