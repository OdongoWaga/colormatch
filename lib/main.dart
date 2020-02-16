import 'package:colormatch/matchesModel.dart';
import 'package:colormatch/previewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PreviewModel>(
            create: (context) => PreviewModel()),
        ChangeNotifierProvider<MatchesModel>(
          create: (context) => MatchesModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Home(),
      ),
    );
  }
}
