import 'package:colormatch/matches.dart';
import 'package:colormatch/previewCircle.dart';
import 'package:colormatch/previewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Submit extends StatelessWidget {
  static var difference;

  String message(difference) {
    difference = ((PreviewCircle.previewHex) - (Matches.matchHex)).abs();

    if (difference < 4194304) {
      return "Top Marks. You have 2020 vision";
    } else if (difference < 8388608) {
      return "Your eyesight is pretty good. You are tetrachromatic";
    } else if (difference < 12582912) {
      return "You neeed to chomp on a carrot. Not even close";
    } else {
      return " You are color blind. Stay away from traffic lights";
    }
  }

  @override
  Widget build(BuildContext context) {
    var color = Provider.of<PreviewModel>(context, listen: true);

    void _showDialog() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Thank you for playing"),
              content: Text(
                message(difference),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: color.colorsPreview,
      child: Text(
        'Submit',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        message(difference);
        _showDialog();
      },
    );
  }
}
