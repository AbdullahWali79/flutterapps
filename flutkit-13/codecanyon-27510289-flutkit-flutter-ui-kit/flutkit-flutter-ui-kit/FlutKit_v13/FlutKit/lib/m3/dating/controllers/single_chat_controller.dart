import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';

import '../models/profile.dart';

class SingleChatController extends FxController {
  Profile profile;

  SingleChatController(this.profile);

  bool showLoading = true, uiLoading = true;

  @override
  initState() {
    super.initState();
    save = false;
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 1));

    showLoading = false;
    uiLoading = false;
    update();
  }

  void goBack() {
    Navigator.pop(context);
  }

  @override
  String getTag() {
    return "single_chat_controller";
  }
}
