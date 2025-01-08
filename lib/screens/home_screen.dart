import 'package:flutter/material.dart';
import 'package:liver_io/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Constants.backgroundColor,
        title: Row(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Liver.',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Constants.white,
                    ),
                  ),
                  TextSpan(
                    text: 'io',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Constants.red,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Image.asset(
              "assets/images/bell.png",
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 15),
            Image.asset(
              "assets/images/search.png",
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
      backgroundColor: Constants.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/use1.png",
              width: double.infinity,
              height: media.height * 0.12,
            ),
            SizedBox(height: media.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Constants.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Constants.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: media.height * 0.02),
            SizedBox(
              height: media.height * 0.035,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: selectedIndex == index
                            ? Constants.white
                            : Color(0xff6f6462),
                      ),
                      child: Text(
                        _getCategoryName(index),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: selectedIndex == index
                              ? Constants.red
                              : Constants.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: media.height * 0.02),
            if (selectedIndex == 0)
              Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/l1.png",
                        width: double.infinity,
                        height: media.height * 0.25,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
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
                        "assets/images/l2.png",
                        width: double.infinity,
                        height: media.height * 0.25,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
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
                            "John is Live",
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
              ),
                 SizedBox(height: media.height * 0.02),
               if (selectedIndex == 1)
                    Column(
                children: [
                    Row(
                children: [
                 Container(
                      width: media.width * 0.45,
                    height: media.height * 0.2,
                    decoration: BoxDecoration(
                      color: Constants.backgroundColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  Image.asset(
                    "assets/images/ch1.png",
                    width: media.width * 0.44,
                    height: media.height * 0.19,
                     
                  ),
                  ),
                  Spacer(),
                   Container(
                      width: media.width * 0.45,
                    height: media.height * 0.2,
                    decoration: BoxDecoration(
                      color: Constants.backgroundColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  Image.asset(
                    "assets/images/ch2.png",
                    width: media.width * 0.44,
                    height: media.height * 0.19,
                  ),
                  ),
                ],
               ),
                SizedBox(height: media.height*0.02,),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/tl1.png",
                        width: double.infinity,
                        height: media.height * 0.25,
                        fit: BoxFit.cover,
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
                            "scOut is Live",
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
                        "assets/images/tl2.png",
                        width: double.infinity,
                        height: media.height * 0.25,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
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
                            "Johnthan gaming",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Constants.white,
                            ),
                          ),
                          
                          Text(
                            "300k views",
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
              ),
                SizedBox(height: media.height * 0.02),
               if (selectedIndex == 2)
                    Column(
                children: [
                    Row(
                children: [
                 Container(
                      width: media.width * 0.45,
                    height: media.height * 0.2,
                    decoration: BoxDecoration(
                      color: Constants.backgroundColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  Image.asset(
                    "assets/images/ch1.png",
                    width: media.width * 0.44,
                    height: media.height * 0.19,
                     
                  ),
                  ),
                  Spacer(),
                   Container(
                      width: media.width * 0.45,
                    height: media.height * 0.2,
                    decoration: BoxDecoration(
                      color: Constants.backgroundColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  Image.asset(
                    "assets/images/ch3.png",
                    width: media.width * 0.44,
                    height: media.height * 0.19,
                  ),
                  ),
                ],
               ),
                SizedBox(height: media.height*0.02,),
                 
                  const SizedBox(height: 10),
                   Stack(
                    children: [
                      Image.asset(
                        "assets/images/tl2.png",
                        width: double.infinity,
                        height: media.height * 0.25,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
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
                            "Johnthan gaming",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Constants.white,
                            ),
                          ),
                          
                          Text(
                            "300k views",
                            style: TextStyle(
                              fontSize: 14,
                              color: Constants.primaryText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                            "scOut is Live",
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
                ],
              ),
          ],
        ),
      ),
    );
  }

  String _getCategoryName(int index) {
    switch (index) {
      case 0:
        return "Popular";
      case 1:
        return "Top games";
      case 2:
        return "Survival";
      case 3:
        return "Creative";
      default:
        return "";
    }
  }
}