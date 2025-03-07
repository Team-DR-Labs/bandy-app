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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 4.0,
          children: [
            Expanded(
              child: PlainButton(
                child: Text("예매하기"),
              ),
            ),
            PlainButton(
              child: Icon(
                Icons.bookmark_outline_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          GridBorderLayout(
            top: true,
            padding: EdgeInsets.zero,
            child: EventImages(),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            child: Text(
              "유다빈밴드 단독 콘서트\n'FOUND OUT!'",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            child: DescriptionContainer(
              title: Text("참여 아티스트"),
              description: Text("아티스트 텍스트 모양 바꿔서 넣을 예정"),
            ),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            child: DescriptionContainer(
              title: Text("관련 링크"),
              description: Text("관련 링크 모양 바꿔서 넣을거임 ㄱㄷ"),
            ),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            child: DescriptionContainer(
              title: Text("설명"),
              description: Text(
                """
보편적인 행복을 마주하는 오늘 이 순간.
기억 너머의 황홀함을 간직할 수 있도록,
좋은 날도 흐린 날도, 이번 여름의 끝자락에
유다빈밴드가 여러분에게 선물하는 공연이 되었으면 해요.

행복의 실마리를 따라 도착한 축제 같은 이곳!
또 다시, FOUND OUT!
""",
              ),
            ),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            child: DescriptionContainer(
              title: Text("위치"),
              description: Text("서울특별시 마포구 현서네집 12, 제비다방"),
            ),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            padding: EdgeInsets.zero,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: DescriptionContainer(
                      padding: const EdgeInsets.all(12.0),
                      title: Text("위치"),
                      description: Text("서울특별시 마포구 현서네집 12, 제비다방"),
                    ),
                  ),
                  VerticalDivider(
                    width: 1.0,
                    color: Theme.of(context).colorScheme.outlineVariant,
                    indent: 0.0,
                    endIndent: 0.0,
                  ),
                  Expanded(
                    child: DescriptionContainer(
                      padding: const EdgeInsets.all(12.0),
                      title: Text("위치"),
                      description: Text("서울특별시 마포구 현서네집 12, 제비다방"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            child: DescriptionContainer(
              title: Text("공연 관련 문의"),
              description: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("유다빈밴드"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12.0,
                    children: [
                      Icon(
                        Icons.attach_email_outlined,
                        size: 24.0,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      Icon(
                        Icons.call_outlined,
                        size: 24.0,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GridBorderSpacer.vertical(
            height: 8.0,
          ),
          GridBorderLayout(
            child: DescriptionContainer(
              spacing: 12.0,
              title: Text("관련 공연"),
              description: GridView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24.0,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: 0.6,
                ),
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("공연명몀염여며"),
                          Text("2024.08.30 - 2024.09.01"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.purple,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("공연명몀염여며"),
                          Text("2024.08.30 - 2024.09.01"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.yellow,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("공연명몀염여며"),
                          Text("2024.08.30 - 2024.09.01"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.cyan,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("공연명몀염여며"),
                          Text("2024.08.30 - 2024.09.01"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("공연명몀염여며"),
                          Text("2024.08.30 - 2024.09.01"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
