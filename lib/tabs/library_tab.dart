import 'package:flutter/material.dart';
class LibraryTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: DefaultTabController(
        length: 3,
          child: Scaffold(
            backgroundColor: Theme.of(context).accentColor,
            appBar: AppBar(
              backgroundColor: Theme.of(context).accentColor,
              title: Text(
                "Music",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 40.0,
                ),
              ),

              bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                indicatorColor: Colors.green,
                tabs: [
                  Tab (text: "Playlists",),
                  Tab(text: "Artists",),
                  Tab(text: "Albums",),
                ],

              ),
            ),
            body: TabBarView(children: [

              Container(
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.library_music,
                      color: Colors.white,
                      size: 75,
                    )),
                color: Theme.of(context).accentColor,
              ),
              Container(
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 75,
                    )),
                color: Theme.of(context).accentColor,
              ),
              Container(
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.album,
                      color: Colors.white,
                      size: 75,
                    )),
                color: Theme.of(context).accentColor,
              ),
            ]),


            ),
          ),


    );
  }
}

