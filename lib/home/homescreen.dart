import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liveintech/home/hoemcont.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var _homeCont = Get.put(HomeController());


  final Map<String , dynamic>  assp={"lat":16.1866,"lon":75.6968,"timezone":"Asia/Kolkata","timezone_offset":19800,"current":{"dt":1716437478,"sunrise":1716423919,"sunset":1716470576,"temp":32.41,"feels_like":34.15,"pressure":1005,"humidity":46,"dew_point":19.31,"uvi":4.04,"clouds":100,"visibility":10000,"wind_speed":2,"wind_deg":160,"wind_gust":2.1,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}]},"daily":[{"dt":1716445800,"sunrise":1716423919,"sunset":1716470576,"moonrise":1716470400,"moonset":1716422040,"moon_phase":0.5,"temp":{"day":33.23,"min":26.84,"max":36.87,"night":26.97,"eve":28.56,"morn":29.57},"feels_like":{"day":34.85,"night":28.64,"eve":30.45,"morn":31.35},"pressure":1005,"humidity":43,"dew_point":18.96,"wind_speed":8.96,"wind_deg":190,"wind_gust":10.08,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":100,"pop":0.87,"rain":4.83,"uvi":10.19},{"dt":1716532200,"sunrise":1716510310,"sunset":1716556997,"moonrise":1716560340,"moonset":1716511260,"moon_phase":0.52,"temp":{"day":32.02,"min":26.68,"max":38.8,"night":29.37,"eve":36.49,"morn":28.2},"feels_like":{"day":31.49,"night":31.18,"eve":35.72,"morn":29.52},"pressure":1004,"humidity":35,"dew_point":14.46,"wind_speed":10.64,"wind_deg":291,"wind_gust":12.67,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":100,"pop":0.38,"rain":0.1,"uvi":8.57},{"dt":1716618600,"sunrise":1716596701,"sunset":1716643418,"moonrise":1716650280,"moonset":1716600840,"moon_phase":0.56,"temp":{"day":33.07,"min":25.85,"max":35.95,"night":27.8,"eve":34.33,"morn":25.85},"feels_like":{"day":32.55,"night":28.96,"eve":33.73,"morn":26.24},"pressure":1004,"humidity":33,"dew_point":14.67,"wind_speed":10.27,"wind_deg":292,"wind_gust":14.01,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":89,"pop":0.02,"uvi":10.92},{"dt":1716705000,"sunrise":1716683093,"sunset":1716729839,"moonrise":1716740220,"moonset":1716690660,"moon_phase":0.59,"temp":{"day":30.52,"min":26.05,"max":34.71,"night":26.72,"eve":33.29,"morn":26.05},"feels_like":{"day":31.17,"night":27.93,"eve":33.21,"morn":26.05},"pressure":1004,"humidity":46,"dew_point":17.46,"wind_speed":12.52,"wind_deg":276,"wind_gust":15.84,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":100,"pop":0.04,"uvi":6.5},{"dt":1716791400,"sunrise":1716769487,"sunset":1716816260,"moonrise":1716829860,"moonset":1716780780,"moon_phase":0.63,"temp":{"day":33.47,"min":24.82,"max":35.36,"night":27.22,"eve":32.86,"morn":24.82},"feels_like":{"day":32.75,"night":29.33,"eve":32.61,"morn":25.32},"pressure":1005,"humidity":31,"dew_point":14.1,"wind_speed":11.82,"wind_deg":282,"wind_gust":16.58,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":96,"pop":0,"uvi":9.73},{"dt":1716877800,"sunrise":1716855881,"sunset":1716902681,"moonrise":1716919260,"moonset":1716870840,"moon_phase":0.66,"temp":{"day":32.87,"min":25.21,"max":35.7,"night":27.4,"eve":32.81,"morn":25.21},"feels_like":{"day":34.72,"night":29.35,"eve":34.37,"morn":25.82},"pressure":1005,"humidity":45,"dew_point":19.3,"wind_speed":11.39,"wind_deg":274,"wind_gust":14.52,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":100,"pop":0.03,"uvi":10},{"dt":1716964200,"sunrise":1716942275,"sunset":1716989102,"moonrise":0,"moonset":1716960900,"moon_phase":0.7,"temp":{"day":33.84,"min":25.04,"max":37.01,"night":27.43,"eve":34.34,"morn":25.04},"feels_like":{"day":35.16,"night":29.1,"eve":35.5,"morn":25.61},"pressure":1004,"humidity":40,"dew_point":18.28,"wind_speed":11.32,"wind_deg":269,"wind_gust":12.79,"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":21,"pop":0,"uvi":10},{"dt":1717050600,"sunrise":1717028671,"sunset":1717075522,"moonrise":1717008360,"moonset":1717050840,"moon_phase":0.75,"temp":{"day":33.44,"min":24.92,"max":36.6,"night":27.39,"eve":36.04,"morn":24.92},"feels_like":{"day":34.73,"night":28.95,"eve":36.48,"morn":25.48},"pressure":1004,"humidity":41,"dew_point":18.43,"wind_speed":8.84,"wind_deg":251,"wind_gust":12.47,"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":14,"pop":0.04,"uvi":10}]};

  // https://api.openweathermap.org/data/2.5/weather?q=${location}&units=imperial&appid=6cb741cf36fe454f9f3d81356a77f976

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: _homeCont.initdata(),
          builder:  
            (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting){
                return CircularProgressIndicator();
              }
            return Container(
              
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: 
                Obx(() => Column(
                  children: [
                    TextField(
                      controller: _homeCont.searchText,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: "Search City",
                                labelStyle: TextStyle(color: Colors.black),
                                suffixIcon: IconButton(

                                  onPressed: (){
                                    _homeCont.initdata();
                                  },
                                  icon: Icon(Icons.search,
                                  size: 30,),
                                )),
                          ),
                    
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                    
                    height: 150,
                    
                    decoration: BoxDecoration(                color: Color.fromARGB(255 ,237,246,249),borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text(
                        "${_homeCont.wdata['weather'][0]['main']}" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),) ,
                        Text("${_homeCont.wdata['main']['temp'].toInt()}°" ,style: TextStyle(fontSize: 80 , fontWeight: FontWeight.w500) ) ],
                                    ),
                    ),),
                  Container(
                    width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(                color: Color.fromARGB(255 ,237,246,249),borderRadius: BorderRadius.circular(20)),
                     height: 80,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Center(child: Text("There will be ${ _homeCont.wdata['weather'][0]['description']} today" ,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w600 , color: const Color.fromARGB(255, 122, 122, 122) ),)),)
                  ,
                 
                  
                  Container(
                    decoration: BoxDecoration(                color: Color.fromARGB(255 ,237,246,249),borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.symmetric(vertical: 10),
              
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                        children: [ Column(children: [Icon(Icons.wind_power , color: Colors.blue[500],size: 40,), Text("${_homeCont.wdata['wind']['speed'].toInt()}" ,style: TextStyle(fontSize: 20),) , Text("Wind Speed" ,style: TextStyle(fontSize: 15 , color: const Color.fromARGB(255, 122, 122, 122)), )],),
                       Column(children: [Icon(Icons.sensor_window_sharp , color: Colors.blue[500],size: 40,), Text("${_homeCont.wdata['wind']['deg'].toInt()}" ,style: TextStyle(fontSize: 20),) , Text("Wind Degree" ,style: TextStyle(fontSize: 15 , color: const Color.fromARGB(255, 122, 122, 122)), )],)
                       , Column(children: [Icon(Icons.integration_instructions , color: Colors.blue[500],size: 40,), Text("${_homeCont.wdata['main']['pressure'].toInt()}" ,style: TextStyle(fontSize: 20),) , Text("Pressure" ,style: TextStyle(fontSize: 15 , color: const Color.fromARGB(255, 122, 122, 122)), )],)
                      ],),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                        children: [ Column(children: [Icon(Icons.hub , color: Colors.blue[500],size: 40,), Text("${_homeCont.wdata['main']['humidity'].toInt()}°" ,style: TextStyle(fontSize: 20),) , Text("Humidity" ,style: TextStyle(fontSize: 15 , color: const Color.fromARGB(255, 122, 122, 122)), )],),
                       Column(children: [Icon(Icons.cloud , color: Colors.blue[500],size: 40,), Text("${_homeCont.wdata['clouds']['all']}" ,style: TextStyle(fontSize: 20),) , Text("Clouds" ,style: TextStyle(fontSize: 15 , color: const Color.fromARGB(255, 122, 122, 122)), )],)
                       , 
                      ],),
                    ],
                  ),),
                  ElevatedButton(onPressed: (){
                    FirebaseAuth.instance.signOut();
                  }, child: Text("Logout"))
                  ],
                ),)
                
              ),
            );
          }
        ),
      ),
    );
  }
}