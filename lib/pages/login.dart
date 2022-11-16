import 'package:e_commerce/shared/custom_txtfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: const [
              SizedBox(
                height: 64,
              ),
              MyTextField(
                textInputType: TextInputType.emailAddress,
                isPassword: false,
                hinttext: "Enter Your Email : ",
              ),
              SizedBox(
                height: 33,
              ),
              MyTextField(
                textInputType: TextInputType.text,
                isPassword: true,
                hinttext: "Enter Your Password : ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
