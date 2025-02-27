import 'dart:math';

import 'package:bandy/core/bds/bds.dart';
import 'package:flutter/material.dart';

final class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({super.key});

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

final class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          if (index % 7 == 0) {
            return GridBorderSpacer.vertical(
              height: 8.0,
            );
          }
          return GridBorderLayout(
            top: index == 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("리스트1"),
            ),
          );
        },
      ),
    );
  }
}
