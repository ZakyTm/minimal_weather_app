class City {
  bool isSelected;
  final String city;
  final String country;
  final bool isDefault;

  City(
      {required this.isSelected,
      required this.city,
      required this.country,
      required this.isDefault});

  static List<City> citiesList = [
    City(
        isSelected: false,
        city: 'Boumerdes',
        country: 'Algeria',
        isDefault: true),
    City(
        isSelected: false,
        city: 'Algiers',
        country: 'Algeria',
        isDefault: false),
    City(isSelected: false, city: 'Oran', country: 'Algeria', isDefault: false),
    City(
        isSelected: false,
        city: 'Constantine',
        country: 'Algeria',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Annaba',
        country: 'Algeria',
        isDefault: false),
    City(
        isSelected: false, city: 'Blida', country: 'Algeria', isDefault: false),
    City(
        isSelected: false, city: 'Batna', country: 'Algeria', isDefault: false),
    City(
        isSelected: false,
        city: 'Djelfa',
        country: 'Algeria',
        isDefault: false),
    City(
        isSelected: false, city: 'Sétif', country: 'Algeria', isDefault: false),
    City(
        isSelected: false,
        city: 'Sidi Bel Abbès',
        country: 'Algeria',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Biskra',
        country: 'Algeria',
        isDefault: false),
  ];

  //Get the selected cities

  static List<City> getSelectedCities() {
    List<City> selectedCities = City.citiesList;
    return selectedCities.where((city) => city.isSelected == true).toList();
  }
}
