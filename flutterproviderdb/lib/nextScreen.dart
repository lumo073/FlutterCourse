import 'package:flutter/material.dart';
import 'counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NextScreen extends ConsumerWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Column(
        children: [
          Text('Counter: $counter'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Go Back'),
          )
        ],
      ),
    );
  }
}
