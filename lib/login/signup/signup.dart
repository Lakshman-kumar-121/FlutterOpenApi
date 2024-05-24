import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:liveintech/login/signup/signupcontroller.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  var _SignupContoller = Get.put(SignupContoller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 255, 253),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Positioned(
                right: 0,
                top: 50,
                child: Image.network(
                  'https://i.pinimg.com/originals/77/0b/80/770b805d5c99c7931366c2e84e88f251.png',
                  width: 100,
                )
                ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, right: 20, top: 60),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "SignUp",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "Get accurate weather by joining us now!",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _SignupContoller.emailTController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person_outline_outlined,
                                size: 30,
                              ))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                     Obx(() => TextField(
                        controller: _SignupContoller.passTController,
                            obscureText: _SignupContoller.passhidden.value,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _SignupContoller.changevisibility();
                                    },
                                    icon: Icon(
                                      _SignupContoller.passhidden.value
                                          ? Icons.remove_red_eye_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 30,
                                    ))),
                          )),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              _SignupContoller.gotosignin();
                            },
                            child: Text(
                              "Signin",
                              style: TextStyle(color: Colors.black),
                            )),
                        TextButton(
                            onPressed: () {
                              // Get.to(Reset());
                            },
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    SizedBox(
                      height: 130,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _SignupContoller.createaccount();
                      },
                      child: Text("Signup",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Color.fromARGB(255, 8, 77, 255),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 50)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    Text(
                      "Creating an account means your are okay with our term and condition , Privacy policy",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}