
import 'package:flutter/material.dart';
import 'package:my_weather_app/models/weather_locations.dart';



class Singleweather extends StatelessWidget {

final int index;
Singleweather(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),//add space around a widget.
      child: Column(
        //wrap all colums
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween, //space between widgets
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //space between widgets
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height:
                      150, //to have space ,push the text to buttom
                    ),
                    Text(
                      locationList[index].city,

                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ), //to have space between text
                    Text(
                        locationList[index].dateTime,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    locationList[index].temparature,
                      style: TextStyle(
                          fontSize: 85,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Row(
                      children: [

                        Image.asset(locationList[index].icon
                          ,width: 40,
                          height: 40,
                        color: Colors.white,),


                        SizedBox(width: 10,),//to have space between icon and text
                        Text(
                          locationList[index].weatherType,

                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white30)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,// space between 3 columns
                  children: [
                    Column(
                      children: [
                        Text(
                          'wind',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          locationList[index].wind.toString(),

                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(

                          'km/h',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,

                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.greenAccent,

                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'rain',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          locationList[index].rain.toString(),
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          '%',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,

                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.redAccent,

                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'humidy',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          locationList[index].humidity.toString(),
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          '%',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,

                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.redAccent,

                            ),

                          ],
                        )
                      ],
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
