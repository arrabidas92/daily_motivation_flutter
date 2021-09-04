import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//TODO:Continue UI implementation with text Set daily motivation reminders
class DailyMotivationReminderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Stack(
          children: [
            Image.asset('assets/images/second_onboarding.png'),
            const MotivationReminderWidget()
          ],
        )
    );
  }
}

class MotivationReminderWidget extends StatelessWidget {
  const MotivationReminderWidget();

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 40,
        left: 32,
        right: 32,
        child: Container(
          height: 64,
          width: MediaQuery.of(context).size.width * 0.60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ]
          ),
          child: const ReminderWidget(),
        )
    );
  }
}

class ReminderWidget extends StatelessWidget {
  const ReminderWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.shade100,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ]
          ),
          child: Icon(Icons.notifications_active, color: Colors.amber),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                '3 months from now, you will thank yourself.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Calibri'
                ),
              ),
            )
        )
      ],
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [

            ],
          ),
        )
    );
  }
}