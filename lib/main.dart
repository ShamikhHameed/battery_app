import 'package:battery_app/pages/charge_history.dart';
import 'package:battery_app/pages/home_page.dart';
import 'package:battery_app/pages/notification_setter.dart';
import 'package:battery_app/pages/usage_last_charge.dart';
import 'package:battery_app/pages/usage_last_week.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ChargeHistory.routeName: (context) => const ChargeHistory(),
        NotificationSetter.routeName: (context) => const NotificationSetter(),
        UsageLastCharge.routeName: (context) => const UsageLastCharge(),
        UsageLastWeek.routeName: (context) => const UsageLastWeek()
      },
    );
  }
}