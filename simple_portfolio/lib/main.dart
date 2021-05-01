import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Portfolio",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          children: [
            Button(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Bernice Perpetua Quarshie',
                style: TextStyle(
                  fontSize: 30,
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            PictureWidget(),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.white10,
          ),
        ),
        onPressed: () {},
        child: Text('Download CV',
            style: TextStyle(fontSize: 30, fontFamily: 'MuseoSans')),
        color: Colors.blue,
        textColor: Colors.white,
        elevation: 5,
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        "asset/bern.png",
        fit: BoxFit.cover,
        // height: context.percentHeight * 60,
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.grey,
//         // decoration: BoxDecoration(
//         //   gradient: LinearGradient(
//         //       begin: Alignment.topLeft,
//         //       end: Alignment.bottomRight,
//         //       colors: [Colors.yellow, Colors.pink]),
//         // ),
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/bern.jpg'),
//               radius: 70,
//             ),
//             Text('Bernice Perpetua Quarshie', style: TextStyle(fontSize: 20)),
//             SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Divider(
//               color: Colors.black,
//               height: 2,
//               thickness: 1,
//               indent: 160,
//               endIndent: 160,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                     icon: FaIcon(
//                       FontAwesomeIcons.github,
//                       size: 40,
//                     ),
//                     onPressed: () async {
//                       const url = 'https://github.com/Perpety';
//                       if (await canLaunch(url)) {
//                         await launch(url);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     }),
//                 IconButton(
//                     icon: FaIcon(
//                       FontAwesomeIcons.linkedin,
//                       size: 40,
//                     ),
//                     onPressed: () async {
//                       const url =
//                           'https://www.linkedin.com/in/bernicequarshie/';
//                       if (await canLaunch(url)) {
//                         await launch(url);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     }),
//                 IconButton(
//                     icon: FaIcon(
//                       FontAwesomeIcons.twitter,
//                       size: 40,
//                     ),
//                     onPressed: () async {
//                       const url = 'https://twitter.com/AbenaPm';
//                       if (await canLaunch(url)) {
//                         await launch(url);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     }),
//                 IconButton(
//                     icon: FaIcon(
//                       FontAwesomeIcons.instagram,
//                       size: 40,
//                     ),
//                     onPressed: () async {
//                       const url = 'https://www.instagram.com/ahbenaselorm/';
//                       if (await canLaunch(url)) {
//                         await launch(url);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     }),
//                 IconButton(
//                     icon: FaIcon(
//                       FontAwesomeIcons.facebook,
//                       size: 40,
//                     ),
//                     onPressed: () async {
//                       const url = 'https://web.facebook.com/benice.anne';
//                       if (await canLaunch(url)) {
//                         await launch(url);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     }),
//               ],
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
