import 'package:flutter/material.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromRGBO(40, 52, 59, 1),
            Color.fromRGBO(22, 23, 27, 1),
            Color.fromRGBO(63, 69, 74, 1),
          ],
          stops: [0.1, 0.8, 1],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 60),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  Text(
                    'Playing now',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  Icon(
                    Icons.music_note,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.asset(
                          'assets/img/red2.png',
                          fit: BoxFit.cover,
                        ).image),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height: 350,
                        width: 330,
                        color: Colors.black.withOpacity(0.15),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flutter Show',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 30,
                        color: Color.fromRGBO(52, 253, 253, 1),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'House',
                      style: TextStyle(color: Colors.white.withOpacity(0.5)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Slider(value: 40, min: 0, max: 100, onChanged: (vals){}, activeColor:  Color.fromRGBO(52, 253, 253, 1),),
                  SizedBox(height: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('1:56', style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                      Text('3:21', style: TextStyle(color: Colors.white.withOpacity(0.7)),),
                    ],),
                  ),
                ],
              ),
            )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.repeat,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Icon(
                    Icons.fast_rewind,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        gradient: RadialGradient(center: Alignment.topLeft, colors: [
                          Color.fromRGBO(52, 253, 253, 1),
                          Color.fromRGBO(172, 254, 255, 1),
                        ]),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.pause,
                        size: 35,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.fast_forward,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  Icon(
                    Icons.volume_mute,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
