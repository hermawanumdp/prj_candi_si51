import 'package:flutter/material.dart';
import 'package:prj_candi_si51/data/candi_data.dart';
import 'package:prj_candi_si51/widgets/item_card.dart';

import '../models/candi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Candi"),
      ),
      //TODO 1 APP bar
      //TODO 2 BODY
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index) {
            //TODO 3 Item card
            Candi candi = candiList[index];
            return ItemCard(candi: candi);
          }),
    );
  }
}
