import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO:Continue UI implementation with state for daily reminders

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
            Image.asset(
              'assets/images/second_onboarding.png',
              height: MediaQuery.of(context).size.height * 0.5,
            ),
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
        top: 84,
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
              Text(
                'Set daily Motivation reminders.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontFamily: 'Calibri'
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'How many',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Calibri',
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: MotivationReminderStepper(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8)
                ),
              )
            ],
          ),
        )
    );
  }
}

class MotivationReminderStepper extends StatefulWidget {
  MotivationReminderStepper();

  @override
  _MotivationReminderStepperState createState() {
    return _MotivationReminderStepperState();
  }
}

class _MotivationReminderStepperState extends State<MotivationReminderStepper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StepperWidget(Icons.remove),
        SizedBox(width: 32),
        Text(
          '10x',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontFamily: 'Calibri'
          ),
        ),
        SizedBox(width: 32),
        StepperWidget(Icons.add),
        SizedBox(width: 8)
      ],
    );
  }
}

class StepperWidget extends StatelessWidget {
  final IconData iconData;

  const StepperWidget(this.iconData);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.black, width: 1)
        ),
        child: Icon(iconData, color: Colors.black)
    );
  }
}