import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trusty/utils/sizes.dart';
import 'package:trusty/utils/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ));
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Styles.scaffoldColor2,
      body: Padding(
        padding: const EdgeInsets.only(
            bottom: Sizes.size100, left: Sizes.size30, right: Sizes.size30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  const Image(image: AssetImage('assets/images/tb_logo.png')),
                  Text(
                    'Trusty!',
                    style: theme.textTheme.headline6,
                  ),
                  const SizedBox(height: Sizes.size100 * 2),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: Sizes.size60,
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Get Started",
                        style: TextStyle(fontSize: Sizes.size20),
                      ),
                      Sizes.space20,
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Styles.color8),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder()),
                  ),
                  onPressed: () => Navigator.pushNamed(context, 'home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
