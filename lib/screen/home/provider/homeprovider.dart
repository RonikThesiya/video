import 'package:flutter/cupertino.dart';

class Homeprovider extends ChangeNotifier
{
  bool isPlay = false;

  void Player()
  {
    isPlay = !isPlay;
    notifyListeners();
  }
}