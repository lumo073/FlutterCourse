class Weather {
  final String location;
  final String temperature;
  final String condition;
  final String aqi;
  Weather(
      {required this.location,
      required this.temperature,
      required this.condition,
      required this.aqi});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      location: json['location']['name'],
      temperature: json['current']['temp_c'].toString(),
      condition: json['current']['condition']['text'],
      aqi: json['air_quality']['us-epa-index'].toString(),
    );
  }
}
