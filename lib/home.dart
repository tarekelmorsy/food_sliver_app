import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_app/travel_bean.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
          Text(
            "travel blog",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          Expanded(child: TraveWidget(),flex: 2,)
        ],
      ),
    );
  }
}
class TraveWidget extends StatelessWidget{
  // List<TravelBean> tr
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
