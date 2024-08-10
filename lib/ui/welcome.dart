import 'package:flutter/material.dart';

import '../models/city.dart';
import '../models/constants.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    List<City> cities =
        City.citiesList.where((city) => city.isDefault == false).toList();

    List<City> selectedCities = City.getSelectedCities();

    Constants myConstants = Constants();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: myConstants.secondaryColor,
        title: Text(selectedCities.length.toString() + ' Selected'),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: size.width,
            decoration: BoxDecoration(
              border: cities[index].isSelected == true
                  ? Border.all(
                      color: myConstants.secondaryColor.withOpacity(.6),
                      width: 2)
                  : Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          );
        },
      ),
    );
  }
}
