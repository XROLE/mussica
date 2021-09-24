import 'package:flutter/material.dart';
import 'package:musicca/PlayerPage/index.dart';

class Musicca extends StatelessWidget {
  const Musicca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('assets/img/mussica2.png').image,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter),
          color: Colors.red,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Expanded(child: SizedBox(height: 100)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PlayerPage()));
                      },
                      child: Container(
                        height: 300,
                        child: Image.asset(
                          'assets/img/headphone.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox(height: 100)),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Text(
                              'Mussica   ',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            Positioned(
                              top: 20,
                              left: 120,
                              child: Container(
                                height: 7,
                                width: 7,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(48, 255, 253, 1), shape: BoxShape.circle),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Where your music gets better every day. Keep enjoying on limited music down time with us Where your music gets better every day.',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(48, 255, 253, 1), shape: BoxShape.circle),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5), shape: BoxShape.circle),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5), shape: BoxShape.circle),
                            ),
                          ],
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
