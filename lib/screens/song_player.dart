import 'package:flutter/material.dart';
import 'package:spotify_ui/screens/home_screen.dart';
class SongPlayer extends StatefulWidget {
  final VoidCallback onPressed;
  SongPlayer({this.onPressed});
  @override
  _SongPlayerState createState() => _SongPlayerState();
}

class _SongPlayerState extends State<SongPlayer> {
  bool isPlaying = false;
  var _value=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,

      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
         begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.brown,Colors.black54]
        )
        ),
        child: Column(
          children: [
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              IconButton(
             icon: Icon(Icons.keyboard_arrow_down,
             color: Colors.white,
             size: 30.0,),
                onPressed: (){},
            ),
              Text(
             'Now Playing',
             style: TextStyle(
               fontFamily: 'Montserrat',
               fontSize: 15.0,
               fontWeight: FontWeight.normal,
               color: Colors.white,
             ),),

                IconButton(icon: Icon(Icons.more_vert,
                color: Colors.white,), onPressed: (){}),
    ]),
        SizedBox(
        height: 40.0,
        ),
    Container(
        padding: EdgeInsets.all(10.0),
        height: 340.0,
         width: 340.0,

    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.brown,Colors.yellow]
        ),
    image: DecorationImage(
    fit: BoxFit.fill,
    image: AssetImage('images/bohemian.jpg'),
    )
    ),
    ),
    SizedBox(
    height: 40.0,
    ),
            Padding(

              padding: const EdgeInsets.only(left: 35.0,right: 35.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bohemian Raphsody',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  ),
                      Text(
                        'Queen',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize:18.0,
                        ),
                      ),

                  Slider(value: _value, onChanged: (value){
                    setState(() {
                      _value=value;
                    });
                  },
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,

                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     IconButton(icon: Icon(
                       Icons.favorite_border,
                       size: 30.0,
                       color: Colors.white,),
                         onPressed: (){}),
                     IconButton(
                       iconSize: 30,
                       icon: Icon(Icons.skip_previous, color: Colors.white),
                       onPressed: () {},
                     ),
                     IconButton(
                       iconSize: 50,
                       icon: Icon(
                           isPlaying
                               ? Icons.pause_circle_filled
                               : Icons.play_circle_filled,
                           color: Colors.white),
                       onPressed: () {
                         setState(() {
                           if (isPlaying) {
                             isPlaying = false;
                           } else {
                             isPlaying = true;
                           }
                         });
                       },
                     ),
                     IconButton(
                       iconSize: 30,
                       icon: Icon(Icons.skip_next, color: Colors.white),
                       onPressed: () {},
                     ),
                     IconButton(
                       iconSize: 30,
                       icon: Icon(Icons.remove_circle_outline, color: Colors.white),
                       onPressed: () {
                       },)
                   ],
                 )
                ],
              ),
            )
            
]
    ),
      )
    );
  }
}
