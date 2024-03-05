import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UiControlsScreen"),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer Mode"),
            subtitle: const Text("Additional Controls"),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = value;
              });
            }),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text("By Car"),
                subtitle: const Text("Viajar por carro"),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (vale) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text("By Plane"),
                subtitle: const Text("Viajar por avion"),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (vale) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text("By Boat"),
                subtitle: const Text("Viajar por bote"),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (vale) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text("By submarine"),
                subtitle: const Text("Viajar por submarino"),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (vale) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    }))
          ],
        ),
        CheckboxListTile(
            title: const Text("Desayuno?"),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
        CheckboxListTile(
            title: const Text("Almuerzo?"),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
            title: const Text("Comida?"),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
