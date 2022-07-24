import 'package:flutter/material.dart';
import 'package:movie_ui/common/reusable_widgets.dart';
import 'listview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
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
                              "https://static.filmin.es/images/media/35067/1/poster_0_3.png")),
                    ),
                  )
                ],
              )),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Image(
                                  image: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/0/09/Logotipo_SensaCine.png"),
                                  height: 50.0),
                              SizedBox(width: 5),
                              Text(
                                "4.1/5",
                                style: TextStyle(color: Color(0xFF9A9BB2)),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Midnight Express",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              //Checar esto
                              Spacer(),
                              Icon(
                                Icons.bookmark_outline_sharp,
                                size: 30.0,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Biographical,",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 16)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Drama,",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 16)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text("1978 / ",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 16)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("2h 1m /",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 16)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(" C",
                                      style: TextStyle(
                                          color: Color(0xFF9A9BB2),
                                          fontSize: 16))
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 150,
                                  height: 60,
                                  child: OutlinedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(15),
                                                      bottomLeft:
                                                          Radius.circular(
                                                              15)))),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white)),
                                      onPressed: null,
                                      child: Text('Similar to',
                                          style: TextStyle(
                                              color: Color(0xFF9A9BB2)))),
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 60,
                                  child: OutlinedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15)))),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Color.fromARGB(
                                                      255, 43, 25, 238))),
                                      onPressed: null,
                                      child: Text(
                                        'Details',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ]),
                          SizedBox(height: 60),
                          Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                Text("About:",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.right)
                              ]),
                              SizedBox(height: 10),
                              SizedBox(
                                  width: 500,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Hayes was a young American student sent to a Turkish prison for trying to smuggle hashish out of the country. The films title is prison slang for his escape attempt.',
                                        style: TextStyle(fontSize: 13),
                                        textAlign: TextAlign.justify,
                                      ))),
                              SizedBox(height: 30),
                              Row(children: <Widget>[
                                Text("Starring",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.right),
                                SizedBox(width: 250),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(154, 155, 178, 1),
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ListViewScreen()));
                                    },
                                    child: const Text('Full Cast')),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: Color(0xFF9A9BB2),
                                  size: 15.0,
                                )
                              ]),
                            ],
                          ),
                          Column(children: <Widget>[
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: const <Widget>[
                                  ImageCast(
                                      Image_URL:
                                          "https://m.media-amazon.com/images/I/619h2UlqQBL._AC_SL1000_.jpg",
                                      widthImage: 90),
                                  CastCard(
                                      character: "Billy Hayes",
                                      name: "Brad Davis"),
                                  ImageCast(
                                      Image_URL:
                                          "https://1.bp.blogspot.com/-ty_bKJYN71A/WI0C7gCvLiI/AAAAAAAAmic/wLeCKkTDifEM5vsV3AsXr8HsYE_GGlv3QCEw/s1600/4d9f560d4a97c6e8e8f1d68366f505ce.jpg",
                                      widthImage: 90),
                                  CastCard(character: "Max", name: "John Hurt"),
                                  ImageCast(
                                      Image_URL:
                                          "https://www.cine.com/media/actores/2/23466/23466_500.jpg",
                                      widthImage: 90),
                                  CastCard(
                                      character: "Susan", name: "Irene Miracle")
                                ],
                              ),
                            )
                          ]),
                          const SizedBox(height: 30),
                          Row(children: <Widget>[
                            Text("Gallery",
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.right),
                            const SizedBox(width: 190),
                            TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF9A9BB2))),
                                onPressed: null,
                                child: const Text('Midnight Express')),
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
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: const Image(
                                        image: NetworkImage(
                                            "data:image/jpeg;base64,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"),
                                        width: 300),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: const Image(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX-NHZdhIXVPxZd3kNcwTR6JK--Tui2BJkbg&usqp=CAU"),
                                        width: 300),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: const Image(
                                        image: NetworkImage(
                                            "https://pics.filmaffinity.com/Nightmare_Alley-884103040-large.jpg"),
                                        width: 300),
                                  ),
                                ],
                              ),
                            )
                          ])
                        ],
                      ))),
            ],
          ),
        ],
      )),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.turned_in), label: '')
      ]),
    );
  }
}
