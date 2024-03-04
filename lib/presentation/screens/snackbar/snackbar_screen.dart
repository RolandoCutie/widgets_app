import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text("Hola"),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text("Are you sure?"),
              content: const Text("Licences"),
              actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text("Close"),
                ),
                FilledButton(
                    onPressed: () => context.pop(), child: const Text("Accept"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar y Diálogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                    context: context, children: [const Text("Licences")]);
              },
              child: const Text("Licencias usadas"),
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar diálogo"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text("Mostrar SnackBar"),
        icon: const Icon(Icons.remove_red_eye_rounded),
      ),
    );
  }
}
