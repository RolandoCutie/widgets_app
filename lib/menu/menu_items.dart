import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbar y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbar_screen',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated containers',
      subTitle: 'Stateful widgets animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'Ui Controls + Tiles',
      subTitle: 'Stateful widgets animado',
      link: '/controls_screen',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduccion a la aplicación',
      subTitle: 'Pequeno tutorial de la aplicacion',
      link: '/tutorial_screen',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Lista infinita y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Counter app',
      subTitle: 'Usando Riverpod',
      link: '/counter_app',
      icon: Icons.calculate_outlined),
  MenuItem(
      title: 'Cambiar tema',
      subTitle: 'Cambiar tema de la aplicación',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
