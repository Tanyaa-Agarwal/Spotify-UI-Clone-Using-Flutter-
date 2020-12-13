import 'package:flutter/material.dart';
import 'package:spotify_ui/modal_class/artist.dart';
class ArtistList extends StatefulWidget {
  ArtistList({this.artists,this.onPressed});
  final List<Artist> artists;
  final VoidCallback onPressed;
  @override
  _ArtistListState createState() => _ArtistListState();
}

class _ArtistListState extends State<ArtistList> {

  @override
  Widget build(BuildContext context) {
    return Expanded(

        child:ListView.builder(
         scrollDirection: Axis.horizontal,
            itemCount: widget.artists.length,
          //converts every item in list to  a widget
          //inkwell widget is a rectangular area of a Material that responds to touch
          itemBuilder: (context,index) => InkWell(
            // onTap: (){
            //   Navigator.push(context,MaterialPageRoute(builder: (context)=> SongPlayer()) )
            // },
            onTap: widget.onPressed,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.artists[index].imagesrc),
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      widget.artists[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),)
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
