import 'package:flutter/material.dart';


// class RedeemConfirmationScreen extends ModalRoute<void> {

class RedeemConfirmationScreen extends StatelessWidget {

@override

Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.white.withOpacity(0.05), 
  // this is the main reason of transparency at next screen.
  // I am ignoring rest implementation but what i have achieved is you can see.


      appBar: AppBar(
        title: Text('args.title'),
      ),
      body: SafeArea(
        child: _buildOverlayContent(context),
      
      ),
    );


  
 }

  Widget _buildOverlayContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'This is a nice overlay',
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          RaisedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Dismiss'),
          )
        ],
      ),
    );
  }
}