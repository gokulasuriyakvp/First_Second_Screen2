import 'package:first_second_screen2/first_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final _enterNameTxtCnt = TextEditingController();
  final _enterMobileNumberTxtCnt = TextEditingController();

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return FirstScreen(
          Name: _enterNameTxtCnt.text,
          MobileNumber: _enterMobileNumberTxtCnt.text);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _enterNameTxtCnt,
                  decoration: InputDecoration(labelText: ' Enter Name'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _enterMobileNumberTxtCnt,
                  decoration:
                      InputDecoration(labelText: ' Enter Mobile Number'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  child: Text(
                    'Send Data >>',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
