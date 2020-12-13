import 'package:flutter/material.dart';
import 'package:spotify_ui/tabs/home_tab.dart';
import 'package:spotify_ui/tabs/search_tab.dart';
import 'package:spotify_ui/tabs/library_tab.dart';
import 'package:spotify_ui/screens/song_player.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  bool isPlaying= false;
  var _value=0.0;
  void handlePressed(){
    print('hello');
    setState(() {
      isPlaying=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: <Widget>[
        Scaffold(
          body: Container(
            color: Theme.of(context).accentColor,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Expanded(
                      child: _currentIndex == 0
                          ? HomeTab(
                        onPressed: (){},
                      )
                          : _currentIndex == 1
                          ? SearchTab()
                          :  LibraryTab(),
                    ),
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
                isPlaying
                    ? Container()
                    : Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(

                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'images/bohemian.jpg'),
                                        ),
                                      ),
                                    ),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Bohemian Rhapsody",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              "Queen",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    flex: 3,
                                  ),
                                  IconButton(icon:Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,) ,
                                      onPressed: (){

                                      }),
                                  IconButton(
                                    iconSize: 30,
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    icon: Icon(
                                      Icons.skip_next,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            // Slider(
                            //   value: _value,
                            //   onChanged: (value) {
                            //     setState(() {
                            //       _value = value;
                            //     });
                            //   },
                            //   activeColor: Colors.white,
                            //   inactiveColor: Colors.grey,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
                canvasColor: Theme.of(context).primaryColor,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: TextStyle(
                        color: Color(
                            0xffA7A8AC)))), // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
              onTap: _onTabTapped,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_music),
                  title: Text('Library'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.monetization_on),
                  title: Text('Premium'),
                ),
              ],
            ),
          ),
        ),
        isPlaying ? SongPlayer() : Container(),
      ],
    );
  }

  void _onTabTapped(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}





























