import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/list_data.dart';

import 'wilayah.dart';

class Region extends StatelessWidget {
  const Region({Key? key}) : super(key: key);

  Widget widgetWilayah(Wilayah wilayah) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              wilayah.name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "KCU: ${wilayah.kcu.toString()}",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "KCP: ${wilayah.kcp.toString()}",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Text(
              "KK: ${wilayah.kk.toString()}",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.grey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              icon: Icon(
                Icons.circle,
                color: Colors.lightBlue,
              ),
              hintText: "Search",
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey[700],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        body: GridView.count(
          padding: EdgeInsets.symmetric(horizontal: 10),
          childAspectRatio: 16 / 9,
          crossAxisCount: 2,
          children: List.generate(12, (index) {
            return Center(
              child: widgetWilayah(
                Wilayah("WILAYAH ${index + 1}", Random().nextInt(754),
                    Random().nextInt(1500), Random().nextInt(120)),
              ),
            );
          }),
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.stacked_bar_chart,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => List_Data()));
                },
                icon: Icon(
                  Icons.folder_shared_sharp,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Region()));
                },
                icon: Icon(
                  Icons.apartment,
                  size: 40,
                  color: Colors.lightBlue,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.article,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }
}
