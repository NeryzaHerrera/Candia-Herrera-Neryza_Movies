import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../screens/information_screen.dart';

class GalleryImage extends StatelessWidget {
  final String Image_URL;
  final int CrossAxisCell_Count;
  final int MainAxisCell_Count;

  const GalleryImage(
      {Key? key,
      required this.Image_URL,
      required this.CrossAxisCell_Count,
      required this.MainAxisCell_Count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
        crossAxisCellCount: CrossAxisCell_Count,
        mainAxisCellCount: MainAxisCell_Count,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(image: NetworkImage(Image_URL))));
  }
}

class ImageCast extends StatelessWidget {
  final double widthImage;
  final String Image_URL;

  const ImageCast({Key? key, required this.Image_URL, required this.widthImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image(image: NetworkImage(Image_URL), width: widthImage));
  }
}

class CastCard extends StatelessWidget {
  final String name;
  final String character;

  const CastCard({Key? key, required this.character, required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).colorScheme.outline),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: SizedBox(
          width: 200,
          height: 80,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('$name',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Text('$character',
                          style: const TextStyle(
                              fontSize: 12, color: Color(0xFF9A9BB2)))
                    ],
                  )))),
    );
  }
}

class LeftAlingTitle extends StatelessWidget {
  final String title;

  const LeftAlingTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Text(title, style: Theme.of(context).textTheme.headline6));
  }
}

class CastCard_ArrowIcon extends StatelessWidget {
  final String name;
  final String character;

  const CastCard_ArrowIcon(
      {Key? key, required this.name, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 301),
        child: Card(
          elevation: 0,
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InformationScreen()));
              },
              child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('$name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  textAlign: TextAlign.left),
                              Text('$character',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: const Color(0xFF9A9BB2)),
                                  textAlign: TextAlign.left)
                            ],
                          ),
                        ),
                        Spacer(),
                        const Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ),
                  ))),
        ));
  }
}
