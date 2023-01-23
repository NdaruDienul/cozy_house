import 'package:cozy_house/theme.dart';
import 'package:flutter/material.dart';
import 'package:cozy_house/pages/Home_page.dart';

class Errorpages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/404.png',
                width: 300,
              ),
              SizedBox(height: 70),
              Text('Where are you going?',
                  style: blackTextStyle.copyWith(fontSize: 24)),
              SizedBox(
                height: 14,
              ),
              Container(
                child: Text(
                  'Seems like the page that you were\nrequested is already gone',
                  style: greyTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 210,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(17)),
                      primary: purpleColor),
                  child: Text('Back To Home',
                      style: whiteTextStyle.copyWith(fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}