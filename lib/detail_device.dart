import 'package:flutter/material.dart';

class DetailDevice extends StatelessWidget {
  const DetailDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "DETAIL PERANGKAT",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
