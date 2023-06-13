import 'package:flutter/material.dart';
// import 'package:shop_online/constants/asset_images.dart';
import 'package:shop_online/constants/routes.dart';
import 'package:shop_online/screens/auth_ui/login/login.dart';
import 'package:shop_online/widgets/primary_button/primary_button.dart';
// import 'package:shop_online/widgets/top_titles/top_titles.dart';

import '../sign_up/sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9E5DE),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon Logo
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.dribbble.com/users/458522/screenshots/16171869/media/0c5b235e80c42db71c2567d8a04625ac.png',
                ),
                radius: 60.0,
              ),

              const SizedBox(
                height: 5.0,
              ),

              // greeting text
              Text(
                "Sanibonani",
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2F1500),
                ),
              ),

              const SizedBox(
                height: 5.0,
              ),

              const Text(
                'Welcome back, you\'ve been missed.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 40.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        onPrimary: Colors.black,
                        minimumSize: Size(
                            double.infinity, 50.0), // Chiều cao của nút button
                      ),
                      onPressed: () {
                        Routes.instance.push(
                          widget: const Login(),
                          context: context,
                        );
                      },
                      child: Text("Đăng nhập"),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        onPrimary: Colors.black,
                        minimumSize: Size(
                            double.infinity, 50.0), // Chiều cao của nút button
                      ),
                      onPressed: () {
                        Routes.instance.push(
                          widget: const SignUp(),
                          context: context,
                        );
                      },
                      child: Text("Đăng ký"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
