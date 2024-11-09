import 'package:flutter/material.dart';

import '../facebook_ui/facebook_ui.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/': (_) => FacebookUi(),
};
