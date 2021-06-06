import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int intellectLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Intellectual Pass'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 1.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[900],
        onPressed: () {
          setState(() {
            intellectLevel += 1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[600],
            ),
            Text('Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text('Chinmay Agarwal',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Text('Current Intellect Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text('$intellectLevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[500],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'agarwalchinmayjgd@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.web,
                  color: Colors.grey[500],
                ),
                SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  child: new Text(
                    'Blog',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.amber[300],
                    ),
                    ),
                  onTap: () => launch('https://chinmayaswami.github.io/indigo'),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
