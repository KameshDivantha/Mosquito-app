import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mosquito_idnetifer/Screens/Welcome/welcome_screen.dart';
import 'package:mosquito_idnetifer/Widgets/custom_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/Frame3.jpg",
              width: size.width * 1,
            )),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Icon(
                Icons.camera,
                size: 100,
              ),
              CustomButton(
                buttonText: "Quick Scan",
                textColor: Colors.white,
                onPressed: () {},
                buttonColor: Colors.blue,
              )
            ],
          ),
        )
      ],
    ));
  }
}
