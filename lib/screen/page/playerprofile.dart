import 'package:cricketfantasy/util/hexacolor.dart';
import 'package:cricketfantasy/util/vars.dart';
import 'package:flutter/material.dart';

class PlayerProfileScreen extends StatefulWidget {
  const PlayerProfileScreen({Key? key}) : super(key: key);
  @override
  createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 1, title: Text('Player profile')),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Container(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.1),
                        backgroundImage: ExactAssetImage(profileImage))),
                SizedBox(width: 5),
                Expanded(
                    child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Credits',
                            style: TextStyle(color: Colors.black54)),
                        Text('00',
                            style: TextStyle(color: Colors.blue, fontSize: 18))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Total points',
                            style: TextStyle(color: Colors.black54)),
                        Text('00',
                            style: TextStyle(color: Colors.blue, fontSize: 18))
                      ])
                ]))
              ]),
              SizedBox(height: 10),
              Container(
                  child: Container(
                      decoration: BoxDecoration(
                          border: new Border.all(
                              width: 1.0, color: HexColor('#F5F5F5'))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "KL Rahul",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .headline6!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Batting Style',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    color: Colors.black54)),
                                            Text('Right Handed',
                                                style: TextStyle(
                                                    color: Colors.black))
                                          ]))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Bowling Style',
                                                style: TextStyle(
                                                    color: Colors.black54)),
                                            Text('None',
                                                style: TextStyle(
                                                    color: Colors.black)),
                                          ])))
                            ]),
                            Container(
                              height: 1,
                              color: HexColor('#F5F5F5'),
                            ),
                            Row(children: <Widget>[
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Nationality',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    color: Colors.black54)),
                                            Text('Indian',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ))
                                          ]))),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Birth Date',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    color: Colors.black54)),
                                            Text('29-04-1985',
                                                style: TextStyle(
                                                    color: Colors.black))
                                          ])))
                            ])
                          ]))),
              SizedBox(height: 10),
              Center(
                  child: Text('MATCHWISE FANTASY STATS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey))),
              SizedBox(height: 10)
            ])));
  }
}
