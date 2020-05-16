import 'package:flutter/material.dart';

// class RedeemConfirmationScreen extends ModalRoute<void> {

class RedeemConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.05),
      // this is the main reason of transparency at next screen.
      // I am ignoring rest implementation but what i have achieved is you can see.

      body: SafeArea(
        child: _buildOverlayContent(context),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 400,
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Text(
                  'This is a nice overlay',
                  style: TextStyle(
                    color: Colors.white,
                   fontSize: 30.0,
                
                   
                   ),
                     textAlign: TextAlign.center,
                ),
                
                ),
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Dismiss'),
            )
          ],
        ),
      ),
    );
  }
}
