import 'package:flutter/material.dart';
import 'package:spotify_ui/components/rounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_ui/components/simpleround_button.dart';
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
            child: Column(

             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('images/loginimage.jpg'),
                ),
                SizedBox(
                  height:20.0 ,
                ),
                Text(
                  'Millions of songs. \n  Free on Spotify.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Montserrat',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height:20.0 ,
                ),
                SimpleRoundButton(
                  colour: Color(0xff1DB954),
                  buttonTitle: 'SIGN UP FREE',

                ),
                SizedBox(
                  height:10.0 ,
                ),
                RoundedButton(
                  colour: Colors.black,
                  buttonTitle: 'CONTINUE WITH \n PHONE NUMBER',
                  icon: Icons.phone_iphone_sharp,
                  indent: 20.0,
                ),
                SizedBox(
                  height:10.0 ,
                ),
                RoundedButton(
                  colour: Colors.black,
                  buttonTitle: 'CONTINUE WITH FACEBOOK',
                  icon: FontAwesomeIcons.facebook,
                  indent:10.0,
                ),
                SizedBox(
                  height:10.0 ,
                ),
                RoundedButton(
                  colour: Colors.black,
                  buttonTitle: 'CONTINUE WITH GOOGLE',
                  icon: FontAwesomeIcons.google,
                  indent: 25.0,
                ),
                SizedBox(
                  height:10.0 ,
                ),
                SimpleRoundButton(
                  colour: Colors.black,
                  buttonTitle: 'LOG IN',)
              ],
            )
          ),
      )
    );


  }
}
