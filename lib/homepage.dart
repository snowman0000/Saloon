import 'package:flutter/material.dart';
import 'package:myapp/barber_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1,
        color: const Color.fromARGB(255, 182, 177, 177),
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 20,
          bottom: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('find your'),
            Text(
              'Perfect Barber',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search barber or shop...',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.filter_alt),
                  color: Colors.blue,
                  style: IconButton.styleFrom(
                    focusColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(3),
                      side: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              leading: Icon(Icons.location_on),
              title: Text('Downtown'),
              trailing: TextButton(
                onPressed: () {},
                child: Text('Change', style: TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Available Barbers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('2 barbers found'),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: GestureDetector(child: BarberCard()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
