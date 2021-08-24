import 'package:flutter/material.dart';

class MiDDleTile extends StatelessWidget {
  final String title;
  final String imgUrl;
  MiDDleTile({@required this.title, @required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 41,
        color: Colors.white24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 42.5,
              width: 50,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(imgUrl),
              ),
            ),
            Container(
              height: 42.5,
              width: 70,
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
