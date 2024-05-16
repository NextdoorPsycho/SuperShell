import 'package:fast_log/fast_log.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:rxdart/rxdart.dart';
import 'package:super_shell/pages/router.dart';
import 'package:universal_io/io.dart';

//this file is misc utilities that are used throughout the app

//this is the context at any time
BuildContext ctx = router.routerDelegate.navigatorKey.currentContext!;

//this is the current user's uid (Firebase)
String get u {
  try {
    return FirebaseAuth.instance.currentUser!.uid;
  } catch (e, es) {
    error(es);
    return "No User";
  }
}

//this is a boolean that checks if the window is managed
bool get isWindowManaged =>
    !kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS);

//these are the subjects for the theme mode, opacity, and window effect
//feel free to add more if you want!
BehaviorSubject<ThemeMode> themeMode = BehaviorSubject.seeded(ThemeMode.system);
BehaviorSubject<double> themeOpacity = BehaviorSubject.seeded(1.0);
BehaviorSubject<WindowEffect> windowEffect =
    BehaviorSubject.seeded(WindowEffect.solid);
