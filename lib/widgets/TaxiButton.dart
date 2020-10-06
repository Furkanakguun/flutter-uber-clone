import 'package:flutter/material.dart';


class TaxiButton extends StatelessWidget {

  final String title;
  final Color color;
  final Function onPressed;

  const TaxiButton({Key key, this.title, this.color, this.onPressed}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(25),
      ),
      color: color,
      textColor: Colors.white,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Brand-Bold',
            ),
          ),
        ),
      ),
    );
  }
}
