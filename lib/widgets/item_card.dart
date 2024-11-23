import 'package:flutter/material.dart';
import 'package:prj_candi_si51/models/candi.dart';
import 'package:prj_candi_si51/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  //TODO1 variabel
  final Candi candi;

  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(candi: candi)));
      },
      child: Card(
        //TODO 2 properti
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(4),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO 3 image (child)
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
            ),
            //TODO 4 text (child)
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                candi.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            //TODO 5 text (child)
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                candi.type,
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
