import 'package:aspirewebpanel/core/colors.dart';
import 'package:aspirewebpanel/core/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePageDataInsert extends StatefulWidget {
  @override
  _HomePageDataInsertState createState() => _HomePageDataInsertState();
}

class _HomePageDataInsertState extends State<HomePageDataInsert> {
  int group = 1;
  bool isHtml = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Livepage Data Insert"),
        centerTitle: true,
      ),
      body: Container(
        color: backgroundColor,
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Promos/Featured data Entry:",
              style: captionTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Select insert type:",
                  style: secondTitleTextStyle,
                ),
                Radio(
                  value: 1,
                  groupValue: group,
                  onChanged: (value) {
                    setState(() {
                      group = value;
                      isHtml = true;
                    });
                  },
                ),
                Text(
                  "Html Code Input",
                  style: firstTitleTextStyle,
                ),
                SizedBox(
                  width: 10,
                ),
                Radio(
                  value: 2,
                  groupValue: group,
                  onChanged: (value) {
                    setState(() {
                      group = value;
                      isHtml = false;
                    });
                  },
                ),
                Text(
                  "Manual Data Input",
                  style: firstTitleTextStyle,
                ),
              ],
            ),
            isHtml ? htmlWidget() : manualWidget(),
          ],
        ),
      ),
    );
  }

  Widget htmlWidget() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Input your html code below:",
            style: secondTitleTextStyle,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: TextField(
              onChanged: (value) {
                //todo
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Input your html code here...",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
            ),
          ),
          Container(
            width: double.infinity,
            child: Center(
              child: ButtonTheme(
                height: 60,
                minWidth: 180,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    //todo
                  },
                  child: Text(
                    "SUBMIT",
                    style: firstTitleTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //*************Manual Widget*******************
  Widget manualWidget() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Input your post information bellow:",
            style: secondTitleTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Title",
            style: firstTitleTextStyle,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: TextField(
              onChanged: (value) {
                //todo
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Input your title here...",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Description:",
            style: firstTitleTextStyle,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: TextField(
              onChanged: (value) {
                //todo
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Input your description here...",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
            ),
          ),
          Text(
            "Upload picture/video:",
            style: firstTitleTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.white,
                child: Icon(
                  Icons.image,
                  size: 400,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.white,
                child: Icon(
                  Icons.video_library,
                  size: 400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: Center(
              child: ButtonTheme(
                height: 60,
                minWidth: 180,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    //todo
                  },
                  child: Text(
                    "SUBMIT",
                    style: firstTitleTextStyle,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
