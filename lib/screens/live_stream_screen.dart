import 'package:flutter/material.dart';
import 'package:liver_io/utils/constants.dart';

class LiveStreamScreen extends StatefulWidget {
  const LiveStreamScreen({super.key});

  @override
  State<LiveStreamScreen> createState() => _LiveStreamScreenState();
}

class _LiveStreamScreenState extends State<LiveStreamScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/images/lsb.png",
              fit: BoxFit.cover,
            ),
          ),

          // Main content
          Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Constants.backgroundColor,
                elevation: 0,
                title: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/pu1.png",
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Carry is Live",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                            Text(
                              "234k views",
                              style: TextStyle(
                                fontSize: 15,
                                color: Constants.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: media.height * 0.035,
                      width: media.width * 0.2,
                      decoration: BoxDecoration(
                        color: Constants.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(
                            fontSize: 15,
                            color: Constants.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/cross.png",
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: media.height * 0.05,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/pu1.png",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Carry is Live",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Constants.white,
                        ),
                      ),
                      Text(
                        "234k views",
                        style: TextStyle(
                          fontSize: 15,
                          color: Constants.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: media.height * 0.02,
              ),
              Row(
                children: [
                  Container(
                    height: media.height * 0.06,
                    width: media.width * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Constants.white,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Add chat...",
                            style: TextStyle(
                              fontSize: 15,
                              color: Constants.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constants.red,
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Constants.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: media.width * 0.05),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                         color: Constants.red,
                    ),
                    
                    )
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
