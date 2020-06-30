import 'package:aspirewebpanel/homepage_feature_data.dart';
import 'package:flutter/material.dart';

import 'homepage_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomePageFeature> features = [
    HomePageFeature("", "Homepage Data Insert"),
    HomePageFeature("", "Livepage Data Insert"),
    HomePageFeature("", "Homepage Data Insert"),
    HomePageFeature("", "Homepage Data Insert"),
    HomePageFeature("", "Homepage Data Insert"),
    HomePageFeature("", "Homepage Data Insert"),
    HomePageFeature("", "Homepage Data Insert"),
    HomePageFeature("", "Homepage Data Insert"),
    HomePageFeature("", "Homepage Data Insert"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aspire Admin Panel Board"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: gridViewBuilder(context),
      ),
    );
  }

  Widget gridViewBuilder(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: features.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (BuildContext context, int index) {
          return HomePageCard.getHomePageCard(features[index].text);
        },
      ),
    );
  }
}
