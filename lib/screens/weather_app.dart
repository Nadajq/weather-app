
import 'package:flutter/material.dart';
import 'package:my_weather_app/models/weather_locations.dart';
import 'package:my_weather_app/widgets/slider_dot.dart';

import '../widgets/single_weather.dart';

class WeatherApp extends StatefulWidget {
  @override
  State<WeatherApp> createState() => _WeatherAppState();//responsible for managing and updating the internal state of the WeatherApp widget.
}

class _WeatherAppState extends State<WeatherApp> {

  int _currentPage = 0;
  late String bgImg;
  _onpageChange(int index){
    setState((){
      _currentPage = index;
  });
}

  @override


  Widget build(BuildContext context) {
    if(locationList[_currentPage].weatherType == 'Sunny') {
      bgImg = 'assets/istockphoto-1276654229-170x170.jpg';
    }else if(locationList[_currentPage].weatherType == 'Cloudy'){
      bgImg = 'assets/white-clouds-and-blue-sky-free-photo.jpg';
    }else if(locationList[_currentPage].weatherType == 'Rainy'){
      bgImg = 'assets/11172230.jpg';
    }

    return Scaffold(
      extendBodyBehindAppBar: true, // to extend the body image
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent, //make appbar without color
        elevation: 0, //to remove the appbar shadow
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          // Adds action widgets to the app bar
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
          ), //IconButton with a menu icon.
        ],
      ),
      body: Container(//box that can hold other widgets,to control the size,alignment,and decoration of its child
        child: Stack(
          //  to  put widgets  on top of each other
          children: [
            Image.asset(
              bgImg,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black38), //to make text in light images visible
            ),
            Container(
              margin: EdgeInsets.only(top: 140, left: 15),
              child: Row(
                children: [
                  for(int i = 0 ; i < locationList.length;i++)
                    if(i == _currentPage)
                    SliderDot(true)
                  else
                      SliderDot(false)
                  ],
              ),
            ),
            PageView.builder(  //to scroll pages
              scrollDirection: Axis.horizontal,
              onPageChanged: _onpageChange,
              itemCount: locationList.length ,
              itemBuilder: (ctx, i) => Singleweather(i),
            ),

          ],
        ),
      ),
    );
  }
}
