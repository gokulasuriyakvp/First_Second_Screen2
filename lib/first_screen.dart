import 'package:first_second_screen2/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen( {Key? key, this.Name, this.MobileNumber})
      : super(key: key);

  final String? Name;
  final String? MobileNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Name.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:20,
                  ),
                ),
                Text(
                  MobileNumber.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondScreen()));

                },
                child:  Text('Get Data'),
              ),
              ],
            ),
          )),
    );
  }
}
