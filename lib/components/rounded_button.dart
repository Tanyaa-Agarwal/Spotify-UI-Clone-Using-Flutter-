import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.colour,this.buttonTitle,this.onPressed,this.icon,this.indent});
  final Color colour ;
  final String buttonTitle;
  final Function onPressed;
  final IconData icon;
  final double indent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 300.0,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color: colour,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Icon(icon,
              color: Colors.white,),
             Divider(indent: indent,
             ),
              Text(
                buttonTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                ),


              )
            ],
          ),
        ),
      ),
    );


  }
}
