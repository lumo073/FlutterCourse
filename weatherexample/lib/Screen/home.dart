import "dart:async";

import 'package:flutter/material.dart';
import "../services/services.dart";
import "../model/weather.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WeatherService _weatherService = WeatherService();
  Weather? _weather;

  bool _isLoading = true;

  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    try {
      final weather = await _weatherService.getWeather("Butwal");
      print(weather);
      setState(() {
        _weather = weather;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to load weather'),
        ),
      );
    }
  }

  Widget _buildForecastDay(
      String day, IconData icon, int minTemp, int maxTemp) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day, style: const TextStyle(fontSize: 16, color: Colors.white)),
          Row(
            children: [
              Icon(icon, color: Colors.yellow, size: 20),
              const SizedBox(width: 6),
              Text('$minTemp°',
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
              const SizedBox(width: 8),
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.yellow, Colors.red],
                        stops: [0.0, 0.5, 1.0],
                      ),
                    ),
                  ),
                  Positioned(
                    left: ((minTemp - 0) / 50) * 120,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Text('$maxTemp°',
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF4A90E2), Color(0xFF9013FE)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _error != null
                    ? Center(child: Text(_error!))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.add,
                                      color: Colors.white),
                                  onPressed: () {
                                    // Handle add button press
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.more_vert,
                                      color: Colors.white),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            _weather?.location ?? 'Kathmandu',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            _weather?.temperature ?? '25',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 120,
                            ),
                          ),
                          Text(
                            _weather?.condition ?? 'Rainy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.emoji_events,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    _weather?.aqi ?? '15',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '5-DAY FORECAST',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'More details',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                _buildForecastDay(
                                    'Today', Icons.wb_sunny, 9, 25),
                                _buildForecastDay(
                                    'Tomorrow', Icons.cloud, 8, 25),
                                _buildForecastDay(
                                    'Saturday', Icons.cloud_queue, 7, 25),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
          ),
        ),
      ),
    );
  }
}
