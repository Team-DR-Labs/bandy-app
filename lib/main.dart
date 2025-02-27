import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      routerConfig: _bandyRoute(),
    );
  }
}

enum BandyRoutes {
  home(path: "home"),
  eventList(path: "event_list"),
  eventDetails(path: "event_details"),
  ;

  const BandyRoutes({
    required this.path,
  });

  final String path;
}

GoRouter _bandyRoute() => GoRouter(
      routes: [
        GoRoute(
          path: BandyRoutes.home.path,
          builder: (context, state) {
            return HomePage();
          },
        ),
        GoRoute(
          path: BandyRoutes.eventList.path,
          builder: (context, state) {},
        ),
        GoRoute(
          path: BandyRoutes.eventDetails.path,
          builder: (context, state) {},
        ),
      ],
    );
