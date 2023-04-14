import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMS Sender',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final numberController = TextEditingController();

  void _sendSMS() {
    String message = "This is a test message.";
    String recipent = numberController.text;
    List<String> recipents = [recipent];

    FlutterSms.sendSMS(message: message, recipients: recipents, simSlot: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SMS Sender'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Enter Phone Number',
                hintText: 'e.g. 03001234567',
              ),
            ),
            ElevatedButton(
              onPressed: _sendSMS,
              child: Text('Send SMS'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    numberController.dispose();
    super.dispose();
  }
}
