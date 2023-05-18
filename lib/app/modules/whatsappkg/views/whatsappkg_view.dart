import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app/app/modules/signin/views/signin_view.dart';
import 'package:whats_app/app/modules/signup/views/signup_view.dart';
import 'package:whats_app/app/widgets/text_field/register_widget.dart';

import '../controllers/whatsappkg_controller.dart';

class WhatsappkgView extends GetView<WhatsappkgController> {
  const WhatsappkgView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Flash Chat',
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
              isRepeatingAnimation: true,
            ),
            SizedBox(
              height: 40,
            ),
            RegisterWidget(
              title: 'Sign In',
              onTap: () {
                // context.go('/sign_in_page');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SignInPage(),
                //   ),
                // );
                Get.to(SigninView());
              },
            ),
            SizedBox(
              height: 20,
            ),
            RegisterWidget(
              title: 'Sign Up',
              containerColor: Color(0xff2571B6),
              onTap: () {
                // context.go('/sign_up_page');
                Get.to(SignupView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
