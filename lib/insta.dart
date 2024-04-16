import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Instareel extends StatefulWidget {
  const Instareel({super.key});

  @override
  State<Instareel> createState() => _InstareelState();
}

class _InstareelState extends State<Instareel> {
  List images = [
    'https://images.pexels.com/photos/21674961/pexels-photo-21674961/free-photo-of-squad.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/21674963/pexels-photo-21674963/free-photo-of-philharmonic.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/21674960/pexels-photo-21674960/free-photo-of-shapes-and-patterns.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/21576208/pexels-photo-21576208/free-photo-of-a-church-with-a-cross-on-top-of-it.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/21385782/pexels-photo-21385782/free-photo-of-man-people-festival-music.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover)),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 350,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.photo_camera_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 480,
                          ),
                          Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "5,469",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.messenger_outline_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "30",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.send_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "420",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.more_horiz_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    SizedBox(
                      height: 680,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "_gtbeat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.4),
                                    shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    fixedSize: Size(90, 10)),
                                onPressed: () {},
                                child: Text("Follow"))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Kootatil oolavare mention cheyyuka....",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.grey.withOpacity(0.5),
                                  fixedSize: Size(250, 20)),
                              onPressed: () {},
                              child: Row(children: [
                                Icon(Icons.music_note),
                                Text("randomgram~orginal audio")
                              ])),
                        )
                      ],
                    )
                  ]),
                )
              ],
            );
          },
          itemCount: images.length,
        ),
      ),
    );
  }
}
