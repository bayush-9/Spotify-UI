import 'package:flutter/material.dart';
import '../widgets/middle_tiles.dart';
import '../dummy_data.dart';
import '../widgets/category_items.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Spotify'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, top: 5),
              height: 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Ayush!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(2),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MiDDleTile(
                        imgUrl: 'https://wallpapercave.com/wp/wp5763768.jpg',
                        title: 'Ritviz',
                      ),
                      MiDDleTile(
                        imgUrl:
                            'https://www.teahub.io/photos/full/181-1810151_guru-hindi-guru-movie.jpg',
                        title: 'Guru',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MiDDleTile(
                        imgUrl:
                            'https://www.teahub.io/photos/full/53-534584_bollywood-movie-wallpaper-tamasha-movie.jpg',
                        title: 'Tamasha',
                      ),
                      MiDDleTile(
                        imgUrl: 'https://wallpapercave.com/wp/wp6754716.jpg',
                        title: 'Yeh Jawani....',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Explore ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              child: GridView(
                padding: EdgeInsets.all(5),
                children: DUMMY_CATEGORIES
                    .map((catData) => CategoryItem(
                          id: catData.id,
                          color: catData.color,
                          title: catData.title,
                          imageUrl: catData.imageUrl,
                        ))
                    .toList(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 7 / 5,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
              ),
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Your Daily Mixes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 5,
            ),
            Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.93,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  padding: EdgeInsets.all(4),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Stack(children: [
                      Container(
                        color: Colors.black,
                        width: 150,
                        height: 150,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          child: Stack(
                              // children: [Image.network(src)],
                              ),
                          height: 125,
                          width: 125,
                          color: Colors.blue,
                        ),

                        // alignment: AlignmentGeometry(),
                      ),
                    ]);
                  },
                  itemCount: 10,
                )),
          ],
        ),
      ),
    );
  }
}
