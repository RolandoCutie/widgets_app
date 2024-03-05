import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca comida',
      'Nequepraesent primis impetus signiferumque antiopam consectetuer.  Tempusharum eam reformidans sociosqu eius dictum voluptaria arcu ponderum discere lectus usu liber.',
      'assets/Asset 1.png'),
  SlideInfo(
      'Entrega rapida',
      'Iaculisharum ultrices dolores iusto gloriatur convallis eleifend dissentiunt usu an utroque bibendum ut persequeris.  Posuereconsectetur primis quo intellegebat.',
      'assets/Asset 2.png'),
  SlideInfo(
      'Disfruta la comida',
      'capIustonascetur partiendo aenean definiebas ponderum odio adipiscing vero potenti.  Vocenteripuit aliquid menandri expetendis inani consectetuer hinc consectetuer orci pellentesque has.  Interessetlibris congue magnis fuisset nominavi ornatus aeque.  Hisdefinitionem posse molestie graeci est interpretaris mollis instructior.  Vimfeugait eirmod vivendo malesuada nisi signiferumque nihil oporteat laudem et dolores persequeris postulant erat homero pellentesque mea.tion',
      'assets/Asset 3.png'),
];

class TutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      } else {
        setState(() {
          endReached = false;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.imageUrl,
                    ))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text("Salir"),
                onPressed: () => context.pop(),
              )),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(milliseconds: 60),
                    child: FilledButton(
                      child: const Text("Comenzar"),
                      onPressed: () => context.pop(),
                    ),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final tileStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(imageUrl)),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: tileStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                caption,
                style: captionStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
