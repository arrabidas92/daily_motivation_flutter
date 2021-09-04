import 'package:flutter/material.dart';

void main() {
  runApp(
      GetStartedView()
  );
}

class GetStartedView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                const TopWidget(),
                const BottomWidget()
              ],
            ),
          )
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Image.asset('assets/images/first_onboarding.png')
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget();

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 1, child: Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          const Spacer(flex: 1),
          SelfTextWidget('Self care.', 1),
          const SizedBox(height: 8),
          SelfTextWidget('Self love.', 2),
          const SizedBox(height: 8),
          SelfTextWidget('Self growth.', 3),
          const Spacer(flex: 1),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: GetStartedWidget(),
          )
        ],
      ),
    )
    );
  }
}

class SelfTextWidget extends StatefulWidget {
  final String text;
  final int duration;

  SelfTextWidget(this.text, this.duration);

  @override
  _SelfTextWidgetState createState() {
    return _SelfTextWidgetState(text, duration);
  }
}

class _SelfTextWidgetState extends State<SelfTextWidget> {
  final String text;
  final int duration;
  double opacity = 0.0;

  _SelfTextWidgetState(this.text, this.duration);

  _showWidget() {
    Future.delayed(Duration(seconds: duration), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _showWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 1),
          child: Text(
            text,
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black87,
                fontSize: 30,
                fontFamily: 'Calibri'
            ),
          ),
        )
    );
  }
}

class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(onPressed: () => {

      }, child: Text(
          'Get started'
      ), style: ElevatedButton.styleFrom(
        primary: Colors.black87,
      )
      ),
    );
  }
}