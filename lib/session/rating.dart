import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';



class RatingSession extends StatefulWidget {
  @override
  _RatingSessionState createState() => new _RatingSessionState();
}

class _RatingSessionState extends State<RatingSession> {
  double rating = 3.5;
  int starCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Star Rating"),
      ),
      body: new ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.check_circle_outline,
            size: 100,
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Success!',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                'Thank you for using Share-IT',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.pink,
                width: 5.0,
              ),
            ),
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Please rate Patsornchai W.',
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(80.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.0,
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(
                    top: 5.0,
                    bottom: 10.0,
                  ),
                  child: new StarRating(
                    size: 50.0,
                    rating: rating,
                    color: Colors.orange,
                    borderColor: Colors.grey,
                    starCount: starCount,
                    onRatingChanged: (rating) => setState(
                          () {
                            this.rating = rating;
                          },
                        ),
                  ),
                ),
                // new Text(
                //   "Your rating is: $rating",
                //   style: new TextStyle(fontSize: 30.0),
                // ),
                // new Padding(
                //   padding: const EdgeInsets.all(20),
                // ),
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                width: 200,
                child: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('/Home', (Route<dynamic> route) => false);
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (context) => new Home()));
                  },
                ),
              ),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                width: 200,
                child: RaisedButton(
                  color: Colors.red,
                  child: Text(
                    'Report',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(builder: (context) => new Home()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
