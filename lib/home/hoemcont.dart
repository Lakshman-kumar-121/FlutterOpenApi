import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString location = "bangalore".obs;
  TextEditingController searchText = TextEditingController(text: "bangalore");
  RxMap<String, dynamic> wdata = <String, dynamic>{}.obs; // Changed to RxMap
  final dio = Dio();

  initdata() async {
    try {
      location.value = searchText.text.trim();
      final response = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?q=${location.value}&units=metric&units=imperial&appid=6cb741cf36fe454f9f3d81356a77f976');
     
      wdata.value = json.decode(response.toString()); // Assign decoded JSON to wdata
      print("hello" + "${wdata}");
    } catch (e) {
      print("hello12");
      print("Network error: $e");
    }
  }
 
}