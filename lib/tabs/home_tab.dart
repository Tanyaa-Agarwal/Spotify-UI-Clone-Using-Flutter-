import 'package:flutter/material.dart';
import 'package:spotify_ui/components/artist_list.dart';
import 'package:spotify_ui/modal_class/artist.dart';
class HomeTab extends StatefulWidget {
  HomeTab({this.onPressed});
  final VoidCallback onPressed;

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<Artist> recentlyPlayed = [
    Artist(
        title: 'Your Favourites',
        imagesrc: "images/favourite.jpg"
    ),
    Artist(
      title: 'Pink Floyd',
      imagesrc: "images/pink_floyd.jpg",
    ),
    Artist(
       title:'Queen:Best of',
      imagesrc: "images/queen_best_of.jpg",
    ),
    Artist(
      title: 'This is Post Malone',
      imagesrc: "images/queen_best_of.jpg",
    ),
  ];
  final List<Artist> madeForYou = [
    Artist(
        imagesrc: "images/discover.jpg",
        title: 'Discover Weekly',
        ),
    Artist(
        imagesrc: "images/time_capsule.jpg",
        title: 'Time Capsule',
        ),
    Artist(
        title: 'Your Favourites',
        imagesrc: "images/favourite.jpg"
    ),
  ];
  final List<Artist> heavyRotation = [
    Artist(
        imagesrc: "images/hailee.jpg",
        title: 'Hailee Steinfeld',
        ),
    Artist(
        imagesrc: "images/stoney.jpg",
        title: 'Stoney(deluxe)',
        ),
    Artist(
        imagesrc: "images/this_is_queen.jpg",
        title: 'This is Queen',
        ),
    Artist(
        imagesrc: "images/queen_best_of.jpg",
        title: 'Queen : Best of',
       ),
    Artist(
        imagesrc: "images/this_is_post_malone.jpg",
        title: 'This is Post Malone',
      ),
  ];
final List<Artist> mood =[
  Artist(
    title: 'Dance Along',
    imagesrc: "images/party.jpg",
  ),
  Artist(
    title: 'Work from Home',
    imagesrc: "images/work.jpg",
  ),
  Artist(
    title: 'Bollywood Unplugged',
    imagesrc: "images/unplugged.jpg",
  ),
  Artist(
    title: 'Acoustic Love',
    imagesrc: "images/acoustic.jpg",
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Theme
                    .of(context)
                    .accentColor,
                floating: false,
                pinned: false,
                title: Text('Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
                ),),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                  )
                ],
              ),
            ];
          },
          body: Container(
           color: Theme.of(context).accentColor ,
            padding: EdgeInsets.only(top: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:15.0,bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Recently Played',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      ]
                  )
                  ),
                  SizedBox(
                    child:ArtistList(
                      artists: recentlyPlayed,
                      onPressed: widget.onPressed,
                    ) ,
                    height: 185.0,
                  ),
                   Padding(
                      padding: EdgeInsets.only(top:15.0,bottom: 15.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Heavy Rotation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]

                        ) ,),
                  SizedBox(
                    child:ArtistList(
                      artists: heavyRotation,
                      onPressed: widget.onPressed,
                    ) ,
                    height: 185.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:15.0,bottom: 15.0),
                    child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Mood',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]

                    ) ,),
                  SizedBox(
                    child:ArtistList(
                      artists: mood,
                      onPressed: widget.onPressed,
                    ) ,
                    height: 185.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:15.0,bottom: 15.0),
                    child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Made For You',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]

                    ) ,),
                  SizedBox(
                    child:ArtistList(
                      artists: madeForYou,
                      onPressed: widget.onPressed,
                    ) ,
                    height: 185.0,
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
