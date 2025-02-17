  import 'package:flutter/material.dart';

  import 'bcard.dart';
  import 'pred.dart';
  import 'resume.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Call Me Maybe',
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.white70,
            secondary: Colors.blueGrey,
          ),
        ),
        home: const MyHomePage(title: 'Call Me Maybe'),
      );
    }
  }

  class MyHomePage extends StatelessWidget {
    const MyHomePage({super.key, required this.title});

    final String title;
      
    @override
    Widget build(BuildContext context) {
      return DefaultTabController(length: 3, child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(title)),
          titleTextStyle: TextStyle(
            color: Colors.white70,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.blueGrey,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.face)),
              Tab(icon: Icon(Icons.article)),
              Tab(icon: Icon(Icons.question_mark)),
            ],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.white, width: 5),
              insets: EdgeInsets.symmetric(horizontal: 16), // Adjust the horizontal insets to make the indicator wider
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.white70,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            BCard(),
            Resume(),
            Prediction(),
          ],
        )
      ));
    }
  }

  // The program should be a three-tab application and should be visually styled beyond the intentionally minimum "look and feel" shown above. The program should be responsive to different device orientations, invoke platform services, and support some stateful interaction. The application should:
  // Display three tabs, consisting of icons, at the top area of the screen.
  // The application should support all orientations except upside-down.
  // The layout should be responsive enough to look good and be usable in any orientation.
  // The content should not be hidden by notches or curved corners of the device screen.
  // The Business Card and Predictor screens should not cause overflow or require scrolling, in any orientation.
  // When oriented horizontally, the Resume content should expand horizontally, and still allow for vertical scrolling.
