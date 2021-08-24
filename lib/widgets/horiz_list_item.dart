import 'package:flutter/material.dart';

class HorizontalItems extends StatelessWidget {
  final String title;
  final String imageUrl;
  HorizontalItems({this.title, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 200,
                padding: EdgeInsets.all(10),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
