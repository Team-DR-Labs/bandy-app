import 'package:flutter/material.dart';

final class EventImages extends StatefulWidget {
  const EventImages({super.key});

  // TODO: final List<EventImage> images;

  @override
  State<EventImages> createState() => _EventImagesState();
}

final class _EventImagesState extends State<EventImages> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 385.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12.0),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                Center(
                  child: Container(
                    width: 254.0,
                    height: 339.0,
                    color: Colors.red,
                  ),
                ),
                Center(
                  child: Container(
                    width: 254.0,
                    height: 339.0,
                    color: Colors.blue,
                  ),
                ),
                Center(
                  child: Container(
                    width: 254.0,
                    height: 339.0,
                    color: Colors.green,
                  ),
                ),
                Center(
                  child: Container(
                    width: 254.0,
                    height: 339.0,
                    color: Colors.yellow,
                  ),
                ),
                Center(
                  child: Container(
                    width: 254.0,
                    height: 339.0,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            width: 64.0,
            height: 6.0,
            color: Colors.white,
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
