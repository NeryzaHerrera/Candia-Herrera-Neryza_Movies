// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:movie_ui/common/reusable_widgets.dart';
import 'package:movie_ui/screens/gallery.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<String> headers = <String>[
      'Career',
      'Born',
      'Dead',
      'Notable movies'
    ];
    final List<String> info = <String>[
      'Actor',
      'November 6, 1949 Tallahassee, Florida',
      'September 8, 1991(age 41) Los Angeles, California',
      'Midnight Express, Chariots of Fire'
    ];
    final List<String> movies = <String>[
      'Eat My Dust!',
      'Song of Myself',
      'The Secret Life of Ol John Chapman',
      'Midnight Express',
      'A Small Circle of Friends',
      'The Greatest Man in the World',
      'A Rumor of War',
      'Chariots of Fire',
      'Querelle',
      'Terror in the Aisles',
      'Blood Ties'
    ];
    final List<String> movie_year = <String>[
      '1976',
      '1976',
      '1976',
      '1978',
      '1980',
      '1980',
      '1980',
      '1981',
      '1982',
      '1984',
      '1986'
    ];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 234, 234),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
                height: size.height * 0.75,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.75 - 20,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(offset: Offset(0, 5), blurRadius: 50)
                        ],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://1.bp.blogspot.com/-7jZhF3WNgFg/XXNpAMlM4wI/AAAAAAAA1L4/srKAy4NJgKMBzTxQzrBjXiWMvjivSDdiQCEwYBhgL/s1600/7%2BBrad%2BDavis.jpg")),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: const Text("Brad Davis",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("41 years old",
                        style:
                            TextStyle(color: Color(0xFF9A9BB2), fontSize: 20)),
                  ),
                  const SizedBox(height: 25),
                  Row(children: <Widget>[
                    Text("Bio", style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(154, 155, 178, 1),
                            textStyle: const TextStyle(fontSize: 12)),
                        onPressed: null,
                        child: const Text('Full Bio')),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFF9A9BB2),
                      size: 15.0,
                    )
                  ]),
                  const SizedBox(
                      width: 500,
                      child: Text(
                        'Robert Creel Davis, known by the pseudonym Brad Davis, is an American actor, born on November 6, 1949 in Tallahassee, Florida and died on September 8, 1991 in Los Angeles, California. His most famous role is that of Billy Hayes in Alan Parkers Midnight Express, for which he won the Golden Globe for Best Male Newcomer in 1979.',
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.justify,
                      )),
                  const SizedBox(height: 25),
                  const LeftAlingTitle(title: 'Information'),
                  Card(
                      elevation: 0,
                      color: Colors.white,
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                width: 400,
                                height: 250,
                                child: ListView.separated(
                                  itemCount: headers.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        height: 40,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text('${headers[index]}',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF9A9BB2),
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text('${info[index]}',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w700)))
                                          ],
                                        ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                          ],
                        ),
                      ))),
                  const SizedBox(height: 25),
                  Row(children: <Widget>[
                    Text("Photos",
                        style: Theme.of(context).textTheme.headline6),
                    Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(154, 155, 178, 1),
                            textStyle: const TextStyle(fontSize: 12)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GalleryScreen()));
                        },
                        child: const Text('More Photos')),
                    const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFF9A9BB2),
                      size: 15.0,
                    )
                  ]),
                  Column(children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const <Widget>[
                          ImageCast(
                              Image_URL:
                                  "data:image/jpeg;base64,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",
                              widthImage: 150),
                          SizedBox(width: 10),
                          ImageCast(
                              Image_URL:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVbMKUoHyt5xyBbF-_Ms6KuhhHxPIowEOxqA&usqp=CAU",
                              widthImage: 150),
                          SizedBox(width: 10),
                          ImageCast(
                              Image_URL:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP9MCxP7_DlqVGQrFVYBDxZB9ogaT6MGBQKQ&usqp=CAU",
                              widthImage: 150),
                          SizedBox(width: 10),
                          ImageCast(
                              Image_URL:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrxkHYZJGYL3IK4Mm4pdfJyC_KYrbrowgC7Q&usqp=CAU",
                              widthImage: 150),
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(height: 25),
                  const LeftAlingTitle(title: 'Filmography'),
                  Card(
                      elevation: 0,
                      color: Colors.white,
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                width: 400,
                                height: 250,
                                child: ListView.separated(
                                  itemCount: movies.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        height: 30,
                                        child: Row(
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text('${movies[index]}',
                                                    style: TextStyle(
                                                        color: Colors.grey[850],
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500))),
                                            Spacer(),
                                            Text('${movie_year[index]}',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w700),
                                                textAlign: TextAlign.end)
                                          ],
                                        ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                          ],
                        ),
                      ))),
                ],
              ),
            ),
          ],
        )));
  }
}
