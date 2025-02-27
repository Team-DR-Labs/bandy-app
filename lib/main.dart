import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/event_details/event_details.dart';
import 'features/event_list/event_list.dart';
import 'features/home/home.dart';

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
      routerConfig: _bandyRoute(
        // TODO: GET INITIAL ROUTE
        initialRoute: BandyRoutes.eventDetails,
      ),
    );
  }
}

enum BandyRoutes {
  home(path: "/home"),
  eventList(path: "/event_list"),
  eventDetails(path: "/event_details"),
  ;

  const BandyRoutes({
    required this.path,
  });

  final String path;
}

GoRouter _bandyRoute({
  required BandyRoutes initialRoute,
}) =>
    GoRouter(
      initialLocation: initialRoute.path,
      routes: [
        GoRoute(
          path: BandyRoutes.home.path,
          builder: (context, state) {
            return HomePage();
          },
        ),
        GoRoute(
          path: BandyRoutes.eventList.path,
          builder: (context, state) {
            return EventListPage();
          },
        ),
        GoRoute(
          path: BandyRoutes.eventDetails.path,
          builder: (context, state) {
            return EventDetailsPage();
          },
        ),
      ],
    );
