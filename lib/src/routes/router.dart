import 'package:flutter/material.dart';

import 'package:layouts/src/pages/basico_page.dart';
import 'package:layouts/src/pages/gradientes_page.dart';
import 'package:layouts/src/pages/scroll_page.dart';

Map<String, WidgetBuilder> getRoutes(){

  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => HomePage(),
    'scroll' : (BuildContext context) => ScrollPage(),
    'gradiente' : (BuildContext context) => GradientPage(),
  };
}