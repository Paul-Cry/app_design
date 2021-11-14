import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UserPanel(),
  ));
}

class UserPanel extends StatelessWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text('App'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea
    );
  }
}



