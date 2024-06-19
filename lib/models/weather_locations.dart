


class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String icon;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temparature,
    required this.weatherType,
    required this.icon,
    required this.wind,
    required this.rain,
    required this.humidity,
  });



}


final locationList = [

  WeatherLocation(
    city: 'Najran',
    dateTime: '02:20 PM — Thursday, 2 Nov 2023',
    temparature: '24\u2103',
    weatherType: 'Cloudy',
    icon: 'assets/cloudy-day.png',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'Jeddah',
    dateTime: '09:20 AM — Thursday, 2 Nov 2023',
    temparature: '32\u2103',
    weatherType: 'Sunny',
    icon: 'assets/sun.png',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Abha',
    dateTime: '01:20 AM — Thursday, 2 Nov 2023',
    temparature: '15\u2103',
    weatherType: 'Rainy',
    icon:'assets/rainy.png',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];
