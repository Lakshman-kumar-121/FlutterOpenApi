import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:liveintech/login/Auth/authcont.dart';
import 'package:liveintech/login/signin/signin.dart';
import 'package:liveintech/login/signup/signup.dart';

class Auth extends StatelessWidget {
  Auth({super.key});
  var authCont = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if(authCont.currentScreen.value == "SignIn") return SignIn();
      return SignUp();
    },);
  }
}