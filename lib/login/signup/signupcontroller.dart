import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liveintech/login/Auth/authcont.dart';


class SignupContoller extends GetxController {
   var autCont = Get.find<AuthController>();
  
  TextEditingController passTController = TextEditingController();
  RxBool passhidden = true.obs;

  TextEditingController emailTController = TextEditingController();
  
    var _firebaseAuth = FirebaseAuth.instance;

     changevisibility() {
    passhidden.value = !passhidden.value;
  }





  createaccount()async{
    try{
    await _firebaseAuth.createUserWithEmailAndPassword(email: emailTController.text.trim(), password: passTController.text.trim());
    emailTController.clear();
    passTController.clear();}catch(e){
      Get.showSnackbar(GetSnackBar(title: "Error",message: "${e}",));
    }
    
   }

   gotosignin() {
      autCont.changeScreen("SignIn");
  }
}