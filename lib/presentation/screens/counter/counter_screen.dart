import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/providers_counter.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterApp extends ConsumerWidget {
  static const name = 'counter_app';
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //para obtener la referencia de los providers
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
        actions: [
          IconButton(
            icon: isDarkmode
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).state = !isDarkmode;
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          "Valor:$clickCounter",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
      ),
    );
  }
}
