import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video/screen/home/provider/homeprovider.dart';
import 'package:video/screen/home/view/homescreen.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => Homeprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Homescreen(),
        },
      ),
    ),
  );
}