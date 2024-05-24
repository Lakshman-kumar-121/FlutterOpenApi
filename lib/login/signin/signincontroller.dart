
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:liveintech/login/Auth/authcont.dart';
import 'package:liveintech/login/signup/signup.dart';
class SignInController extends GetxController {

  var _firebaseAuth = FirebaseAuth.instance;
 var autCont = Get.find<AuthController>();
  RxBool passhidden = true.obs;

  TextEditingController mailTController = TextEditingController();
  TextEditingController passTController = TextEditingController();
  changevisibility() {
    passhidden.value = !passhidden.value;
  }

 loginaccount()async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: mailTController.text.trim(), password:passTController.text.trim()).then((value) {
      
      });
    mailTController.clear();
    passTController.clear();
    } 
    catch(e){
      Get.showSnackbar(GetSnackBar(title: "Error", message: "${e.toString()}", duration: Duration(seconds: 2),));
    }
  }




  gotosignup (){
    autCont.changeScreen("SignUp");
    
  }
}