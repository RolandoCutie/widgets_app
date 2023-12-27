import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons-screen";
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
              const ElevatedButton(
                  onPressed: null, child: Text("Elevated Disabled")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_outlined),
                  label: const Text("Elevated Icon")),
              FilledButton(onPressed: () {}, child: const Text("Filled")),
              FilledButton.icon(
                  onPressed: () {},
                  label: const Text("Filled Icon"),
                  icon: const Icon(Icons.accessibility_new)),
              OutlinedButton(onPressed: () {}, child: const Text("Outline")),
              OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text("Outline Icon"),
                  icon: const Icon(Icons.terminal)),
              TextButton(onPressed: () {}, child: const Text("Text")),
              TextButton.icon(
                  onPressed: () {},
                  label: const Text("TextButton"),
                  icon: const Icon(Icons.account_box_outlined)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.app_registration_rounded)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                    iconColor: const MaterialStatePropertyAll(Colors.white),
                    backgroundColor: MaterialStatePropertyAll(colors.primary)),
              ),
              const CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Hola Mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
