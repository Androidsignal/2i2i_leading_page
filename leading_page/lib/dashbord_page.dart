import 'package:flutter/material.dart';
import 'content_page.dart';
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/bg_img.png',
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
            ),
            const ContentPage()
          ],
        ),
      ),
    );
  }
}
