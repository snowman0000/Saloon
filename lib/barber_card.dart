import 'package:flutter/material.dart';

class BarberCard extends StatelessWidget {
  const BarberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      elevation: 5,
      child: Container(
        height: 150,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.blue, radius: 50),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),

                Text('Styles', style: TextStyle(color: Colors.blue)),

                Row(children: [Icon(Icons.location_on), Text('Downtown')]),
                Row(
                  children: [
                    Icon(Icons.timelapse, color: Colors.greenAccent),
                    Text('availability'),
                  ],
                ),
                Text(
                  'Service charge',
                  style: TextStyle(color: Colors.greenAccent),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.star, color: Colors.orange),
                Text('4.8(124)'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
