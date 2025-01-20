import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
// counter stateProvider
// final counterProvider = StateProvider<int>((ref) => 0);

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0) {
    _loadCounter();
  }
  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getInt('counter') ?? 0;
  }

  void increment() async {
    state++;
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', state);
  }

  void decrement() async {
    state--;
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', state);
  }

  void reset() async {
    state = 0;
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', state);
  }
}

final counterProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);
