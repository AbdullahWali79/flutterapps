import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';

import '../models/profile.dart';
import '../views/home_screen.dart';
import '../views/single_chat_screen.dart';

class MatchedProfileController extends FxController {
  Profile profile;

  MatchedProfileController(this.profile);

  bool showLoading = true, uiLoading = true;

  @override
  initState() {
    super.initState();
    save = false;
    fetchData();
  }

  void fetchData() async {
    showLoading = false;
    uiLoading = false;
    update();
  }

  void goToHomeScreen() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void goToChatScreen() async {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SingleChatScreen(profile)));
  }

  @override
  String getTag() {
    return "matched_profile_controller";
  }
}
