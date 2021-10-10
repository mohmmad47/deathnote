import 'package:flutter/material.dart';

import '/constrains/themes.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({Key? key, required this.data}) : super(key: key);

  final Map<String, dynamic>? data;

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Card(
      color: kLightBlackColor,
      elevation: 0,
      margin: EdgeInsets.only(bottom: _w / 30, right: _w / 60, left: _w / 60),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data!['title'],
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      color: kWhiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.black38,
                  child: Icon(
                    Icons.work,
                    size: 14,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                data!['discription'],
                style: TextStyle(color: kWhiteColor.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
