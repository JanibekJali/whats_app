import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app/app/modules/signin/views/signin_view.dart';
import 'package:whats_app/app/modules/signup/controllers/signup_controller.dart';
import 'package:whats_app/app/widgets/text_field/register_widget.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);
  final _controller = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   children: [
                    //     CircleAvatar(
                    //       backgroundImage: photo == null
                    //           ? null
                    //           : FileImage(
                    //               File(photo!.path),
                    //             ),
                    //       radius: 60,
                    //     ),
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Column(
                    //       children: [
                    //         Container(
                    //           decoration: BoxDecoration(
                    //             color: Colors.blue.shade200,
                    //             borderRadius: BorderRadius.only(
                    //               topLeft: Radius.circular(15),
                    //               topRight: Radius.circular(15),
                    //             ),
                    //           ),
                    //           child: IconButton(
                    //               onPressed: () {
                    //                 pickImageFromCamera();
                    //               },
                    //               icon: Icon(
                    //                 Icons.camera_alt,
                    //                 size: 30,
                    //               )),
                    //         ),
                    //         SizedBox(
                    //           height: 5,
                    //         ),
                    //         Container(
                    //           decoration: BoxDecoration(
                    //             color: Colors.blue.shade200,
                    //             borderRadius: BorderRadius.only(
                    //               bottomLeft: Radius.circular(15),
                    //               bottomRight: Radius.circular(15),
                    //             ),
                    //           ),
                    //           child: IconButton(
                    //               onPressed: () {
                    //                 pickImageFromGallery();
                    //               },
                    //               icon: Icon(
                    //                 Icons.photo,
                    //                 size: 30,
                    //               )),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        _controller.name.value = value;
                        // FocusManager.instance.primaryFocus?.unfocus();
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: 'full name',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        _controller.email.value = value;
                        // FocusManager.instance.primaryFocus?.unfocus();
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: 'email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        _controller.password.value = value;
                        // FocusManager.instance.primaryFocus?.unfocus();
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: 'password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'already have account?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            // context.go('/sign_in_page');
                            Get.to(() => SigninView());
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RegisterWidget(
                        onTap: () {
                          if (_controller.name.value.isNotEmpty &&
                              _controller.email.value.isNotEmpty &&
                              _controller.password.value.isNotEmpty) {
                            _controller.signUp();
                          }
                        },
                        title: 'Sign Up'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
