import 'package:flutter/material.dart';
import 'package:monster/utils/ThemeUtils.dart';

class ThemeInheritedWidget extends InheritedWidget{

  ThemeBloc themeBloc;
 ThemeInheritedWidget({
    Key key,
    @required this.themeBloc,
    @required Widget child
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ThemeInheritedWidget oldWidget) {
    return true;
  }

   static ThemeInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>();
  }

}