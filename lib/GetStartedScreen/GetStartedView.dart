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
          const SelfTextWidget('Self care.'),
          const SizedBox(height: 8),
          const SelfTextWidget('Self love.'),
          const SizedBox(height: 8),
          const SelfTextWidget('Self growth.'),
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

class SelfTextWidget extends StatelessWidget {
  final String text;

  const SelfTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black87,
              fontSize: 30,
              fontFamily: 'Calibri'
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