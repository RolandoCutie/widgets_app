import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Selected color
final selectedColorProvider = StateProvider((ref) => 0);
