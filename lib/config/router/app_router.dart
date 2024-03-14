import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/app_tutorial/app_tutorial_screen.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/infinited_scroll/infinited_scroll_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen()),
  GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen()),
  GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen()),
  GoRoute(
      path: '/snackbar_screen',
      name: SnackBarScreen.name,
      builder: (context, state) => const SnackBarScreen()),
  GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen()),
  GoRoute(
      path: '/controls_screen',
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen()),
  GoRoute(
      path: '/tutorial_screen',
      name: TutorialScreen.name,
      builder: (context, state) => const TutorialScreen()),
  GoRoute(
      path: '/infinite',
      name: InfinitedScrollScreen.name,
      builder: (context, state) => const InfinitedScrollScreen()),
  GoRoute(
      path: '/counter_app',
      name: CounterApp.name,
      builder: (context, state) => const CounterApp())
]);
