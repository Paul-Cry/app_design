import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UserPanel(),
  ));
}

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _count = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text('App'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 40)),
                Text('Avatar', style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
                )
                  ,),
                Padding(padding: EdgeInsets.only(top: 10)),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                  radius: 60,
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Row(
                  children: [
                    Icon(Icons.mail_outline, size: 20, color: Colors.white),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text('in20light201@gmail.com', style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                    )),

                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text('Колличество нажатий $_count', style: TextStyle(
                  color: Colors.white
                ))
              ],
              )
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _count++;
          });
        },
        child:
          Icon(Icons.ac_unit, size: 20, color: Colors.white),
          backgroundColor: Colors.amber,
      ),
    );
  }
}



