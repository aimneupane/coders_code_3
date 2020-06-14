import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green[300], Colors.green[50]],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage("images/angela.jpg"),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Dr.Bijay Raj Neupane",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Sr. web developer and android developer",
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12.0),
                      onPressed: () {},
                      color: Colors.blueAccent,
                      child: Text(
                        "Message",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12.0),
                      onPressed: () {},
                      color: Colors.blueAccent,
                      child: Text(
                        "Hire Me",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "About me",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Flutter framework does a great job by "
                "providing an excellent framework to build mobile"
                "By providing simplicity in the"
                "development process, high performance in"
                "the resulting mobile application, rich and"
                "relevant user interface for both Android and iOS platform",
                style: TextStyle(
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
