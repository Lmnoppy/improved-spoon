class User {

  String _firstName;
  String _lastName;
  String _email;

  String _location;
  String _currentLocalTimezone;

  List<String> _favLocations;
  List<String> _timers;
  List<String> _stopWatches;

  String get getFirstName => _firstName;
  String get getLastName => _lastName;
  String get getLocation => _location;
  String get getCurrentLocalTimezone => _currentLocalTimezone;
  List<String> get getFavLocations => _favLocations;

  set setFirstName(String value) {
    _firstName = value;
  }

  set setLastName(String value) {
    _lastName = value;
  }

  set setLocation(String value) {
    _location = value;
  }

  set setFavLocations(List<String> value) {
    _favLocations = value;
  }
}
