import 'package:flutter/material.dart';
import 'package:liver_io/utils/constants.dart';
import 'package:liver_io/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          color: Constants.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: media.width * 1.67, 
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemCount: 6, 
                  itemBuilder: (context, index) {
                    return Transform.rotate(
                      angle: -0.1, // Slightly inclined
                      child: Image.asset(
                        'assets/images/wel${index + 1}.png', 
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(     
                        children: [
                          TextSpan(
                            text: 'Liver.',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Constants.white,
                            ),
                          ),
                          TextSpan(
                            text: 'io',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Constants.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    Text(
                      "Stream, watch other games streams and play games in one app",
                      style: TextStyle(
                        fontSize: 15,
                        color: Constants.primaryText,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: media.height * 0.02),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: media.width * 0.8,
                        height: media.height * 0.06,
                        decoration: BoxDecoration(
                          color: Constants.red,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Start",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}