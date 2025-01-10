import 'package:flutter/material.dart';
import 'package:liver_io/utils/constants.dart';

class StreamerScreen extends StatefulWidget {
  const StreamerScreen({super.key});

  @override
  State<StreamerScreen> createState() => _StreamerScreenState();
}

class _StreamerScreenState extends State<StreamerScreen> {
  String _selectedOption = "Live Stream";
  bool _isFollowed = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Constants.backgroundColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Constants.white,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Liver.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Constants.white,
                  ),
                ),
                TextSpan(
                  text: 'io',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Constants.red,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.asset(
              "assets/images/fav.png",
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
      backgroundColor: Constants.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/ssu.png",
                    width: media.width * 0.35,
                    height: media.height * 0.15,
                  ),
                  SizedBox(width: media.width * 0.065),
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
                      SizedBox(height: 8.0),
                      Text(
                        "234k views",
                        style: TextStyle(
                          fontSize: 15,
                          color: Constants.white,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isFollowed = !_isFollowed;
                          });
                        },
                        child: Container(
                          height: media.height * 0.035,
                          width: media.width * 0.2,
                          decoration: BoxDecoration(
                            color: _isFollowed? Constants.white : Constants.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                             _isFollowed ? "Follow" : "Followed",
                              style: TextStyle(
                                fontSize: 15,
                                color:_isFollowed? Constants.red :Constants.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: media.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedOption = "Live Stream";
                          });
                        },
                        child: Text(
                          "Live Stream",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: _selectedOption == "Live Stream"
                                ? Constants.red
                                : Constants.white,
                            decoration: _selectedOption == "Live Stream"
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            decorationColor: _selectedOption == "Live Stream"
                                ? Constants.red
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(width: media.width * 0.15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedOption = "Video";
                          });
                        },
                        child: Text(
                          "Video",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: _selectedOption == "Video"
                                ? Constants.red
                                : Constants.white,
                            decoration: _selectedOption == "Video"
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            decorationColor: _selectedOption == "Video"
                                ? Constants.red
                                : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (_selectedOption == "Live Stream") ...[
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/uls1.png",
                          width: double.infinity,
                          height: media.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: InkWell(
                            onTap: () {
                         
                            },
                            child: Container(
                              width: media.width * 0.2,
                              height: media.height * 0.03,
                              decoration: BoxDecoration(
                                color: Constants.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "Live",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Constants.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                            Text(
                              "234k views",
                              style: TextStyle(
                                fontSize: 14,
                                color: Constants.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/tl1.png",
                          width: double.infinity,
                          height: media.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: InkWell(
                            onTap: () {
                       
                            },
                            child: Container(
                              width: media.width * 0.2,
                              height: media.height * 0.03,
                              decoration: BoxDecoration(
                                color: Constants.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "Offline",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Constants.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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
                              "Johnthan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                            Text(
                              "24k views",
                              style: TextStyle(
                                fontSize: 14,
                                color: Constants.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ] else if (_selectedOption == "Video") ...[
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/v1.png",
                          width: double.infinity,
                          height: media.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: InkWell(
                            onTap: () {
                            },
                            child: Container(
                              width: media.width * 0.2,
                              height: media.height * 0.03,
                              decoration: BoxDecoration(
                                color: Constants.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "Watch",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Constants.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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
                              "Built this dream house for My Family..",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                            Text(
                              "134k views",
                              style: TextStyle(
                                fontSize: 14,
                                color: Constants.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/v2.png",
                          width: double.infinity,
                          height: media.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: InkWell(
                            onTap: () {
                            },
                            child: Container(
                              width: media.width * 0.2,
                              height: media.height * 0.03,
                              decoration: BoxDecoration(
                                color: Constants.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "Watch",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Constants.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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
                              "Spending ₹100,000 in 1 Minute Challenge..",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                            Text(
                              "54k views",
                              style: TextStyle(
                                fontSize: 14,
                                color: Constants.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}
