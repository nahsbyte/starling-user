import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:ubereats/controller/services/authServices/mobileAuthServices.dart';
import 'package:ubereats/controller/services/locationServices/locationServices.dart';

class SignInLogicScreen extends StatefulWidget {
  const SignInLogicScreen({super.key});

  @override
  State<SignInLogicScreen> createState() => _SignInLogicScreenState();
}

class _SignInLogicScreenState extends State<SignInLogicScreen> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      MobileAuthServices.checkAuthentication(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: const Image(
          image: AssetImage(
            'assets/images/splashScreenImage/SplashScreen.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
