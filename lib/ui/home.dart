import 'package:flutter/material.dart';
import 'package:minimal_weather_app/models/city.dart';
import 'package:minimal_weather_app/models/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  Constants myConstants = Constants();

  // initiliazation of the state

  int temperature = 0;
  int maxTemp = 0;
  String weatherStateName = 'Loading .. ';
  int humidity = 0;
  int windSpeed = 0;

  var currentDAte = 'Loading .. ';

  int woeid =
      2507854; // woeid is the where on earth id and for us it's the id of the city of boumerdes
  String location = 'Boumerdes'; // now the woied for boumerdes is 2507854

  //get the cities and selected cities data
  var selectedCities = City.getSelectedCities();
  List<String> cities = [
    'Boumerdes'
  ]; // the list to hold our selected cities .Default is Boumerdes

  //consolidates means to combine the data from the different cities
  List consolidatedWeatherList = [];// to hold our weather data after api call 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
