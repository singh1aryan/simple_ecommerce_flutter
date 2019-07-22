import 'package:flutter/material.dart';
import 'package:simple_ecommerce/login.dart';
import 'home.dart';
import 'colors.dart';
import 'backdrop.dart';
import 'model/product.dart';
//import 'supplemental/cut_corners_border.dart';

// TODO: Build a Shrine Theme (103)
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
        fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: kShrineBrown900,
    bodyColor: kShrineBrown900,
  );
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kShrinePink100,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    // TODO: Add the text themes (103)
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    // TODO: Add the icon themes (103)
    primaryIconTheme: base.iconTheme.copyWith(
        color: kShrineBrown900
    ),
    // TODO: Decorate the inputs (103)
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );
}
// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: Backdrop(
        // TODO: Make currentCategory field take _currentCategory (104)
        currentCategory: Category.all,
        // TODO: Pass _currentCategory for frontLayer (104)
        frontLayer: HomePage(),
        // TODO: Change backLayer field value to CategoryMenuPage (104)
        backLayer: Container(color: kShrinePink100),
        frontTitle: Text('SHRINE'),
        backTitle: Text('MENU'),
    ),
      // TODO: Make currentCategory field take _currentCategory (104)
      // TODO: Pass _currentCategory for frontLayer (104)
      // TODO: Change backLayer field value to CategoryMenuPage (104)
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      theme: _kShrineTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

// TODO: Build a Shrine Theme (103)
// TODO: Build a Shrine Text Theme (103)