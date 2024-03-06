import 'package:flutter/material.dart';

class InfinitedScrollScreen extends StatelessWidget {
  static const name = 'infinite';

  const InfinitedScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return const FadeInImage(
          width: double.infinity,
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://picsum.photos/id/1/500/300'),
        );
      }),
    );
  }
}
