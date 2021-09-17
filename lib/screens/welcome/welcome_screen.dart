import 'package:flutter/material.dart';
import 'package:quiz_app/constant.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset('assets/icons/bg.svg'),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    'Let\'s Play Quiz,',
                    style: TextStyle(fontFamily: kFont, fontSize: 34),
                  ),
                  Text(
                    'Enter your information below',
                    style: TextStyle(fontFamily: kFont),
                  ),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xFF1C2341),
                      filled: true,
                      hintText: 'Full Name',
                      hintStyle: TextStyle(fontFamily: kFont),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Let\'s Start Quiz'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: kFont,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
