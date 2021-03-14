class TimeZone {
  String tzName;
  String currentTime;
  String region;
  List<String> countries;

  TimeZone(tzName, currentTime, region, countries) {
    this.tzName = tzName;
    this.currentTime = currentTime;
    this.region = region;
    this.countries = countries;
  }

}