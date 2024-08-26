import 'package:flutter/material.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Image.network('https://openweathermap.org/img/wn/$icon.png');
  }
}
