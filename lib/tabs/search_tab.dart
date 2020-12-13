import 'package:flutter/material.dart';
class SearchTab extends StatelessWidget {
  final List<String> topGenres=['Pop','Rock','Romance','Bollywood'];
  final List <String> browseAll=[
    'Podcasts',
    'Made for you',
    'New Releases',
    'Moods',
    'Charts',
    'Party',
    'Instrumental',
    'Workout'
  ];
final List<Color> colours=[
  Color(0xffF19821),
  Color(0xff99BACB),
  Color(0xff498D7C),
  Color(0xff4E97F2),
  Color(0xffEFB958),
  Color(0xffB196C4),
  Color(0xffF49824),
  Color(0xffF95F35),
];
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:  (BuildContext context, bool innerBoxIsScrolled)
        {
    return <Widget>[
    SliverAppBar(
    backgroundColor: Theme
        .of(context)
        .accentColor,
    floating: false,
    pinned: false,
    title: Text('Search',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 30.0
    ),),

    ),
    ];

    },
        body: Container(
          color: Theme.of(context).accentColor,
         padding: EdgeInsets.all(5.0),
          child: Column(
            children: [
               TextField(
                  decoration: InputDecoration(
                      filled: true,
                    prefixIcon: Icon(Icons.search,
                    color: Colors.black54,
                    ),
                      hintText: 'Artists, songs, or podcasts',
                      hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all((Radius.circular(10.0)),),

                    )
                  ),
                ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Text(
                     'Your top genres',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 18.0,
                       fontWeight: FontWeight.bold,
                     ),

                   ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      childAspectRatio: (MediaQuery.of(context).size.width)/(2*100),
                      crossAxisCount: 2,
                      children:
                      List.generate(4, (index) {
                       return Padding(
                           padding: EdgeInsets.all(8.0),
                         child: Container(
                           width: MediaQuery.of(context).size.width/2,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8.0),
                             shape: BoxShape.rectangle,
                             color: colours[index],
                           ),
                           child:Padding(
                             padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                             child: Text(
                               topGenres[index],
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold
                               ),
                             ),
                           ) ,
                         ),
                       );
                     },),

                    ),
                    Padding(padding: EdgeInsets.only(top: 15.0)),
                    Text(
                      'Browse all',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    GridView.count(shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      childAspectRatio: (MediaQuery.of(context).size.width)/(2*100),
                      crossAxisCount: 2,
                      children:
                      List.generate(8, (index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                              color: colours[index],
                            ),
                            child:Padding(
                              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                              child: Text(
                                browseAll[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ) ,
                          ),
                        );
                      },),
                    )
                  ],
                ),


          ),
              ),
      ],
        ),
      ),
      ),
    );
  }
}
