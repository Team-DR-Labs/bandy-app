import 'package:bandy/core/bds/bds.dart';
import 'package:bandy/features/event_details/src/widgets/event_images.dart';
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
      body: ListView(
        children: [
          GridBorderLayout(
            top: true,
            padding: EdgeInsets.zero,
            child: EventImages(),
          ),
        ],
      ),
    );
  }
}
