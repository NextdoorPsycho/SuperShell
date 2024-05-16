import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_crud/fire_crud.dart';
import 'package:flutter/material.dart';
import 'package:super_shell/utility/data/user/capabilities.dart';
import 'package:super_shell/utility/data/user/settings.dart';
import 'package:super_shell/utility/data/user/user.dart';

class Crud {
  static FireCrudEvent usage = FireCrudEvent();

  static FireCrud<UserCapabilities> userCapabilities(String uid) => FireCrud<UserCapabilities>(
      usageTracker: (event) => usage += event,
      collection: FirebaseFirestore.instance.collection("user/$uid/data"),
      toMap: (t) => t.toMap(),
      emptyObject: UserCapabilities(admin: false)..exists = false,
      fromMap: (id, map) => UserCapabilitiesMapper.fromMap(map)
        ..uid = id
        ..exists ??= true);

  static FireCrud<UserSettings> userSettings(String uid) => FireCrud<UserSettings>(
      usageTracker: (event) => usage += event,
      collection: FirebaseFirestore.instance.collection("user/$uid/data"),
      toMap: (t) => t.toMap(),
      emptyObject: UserSettings(
        themeMode: ThemeMode.system.name,
      )..exists = false,
      fromMap: (id, map) => UserSettingsMapper.fromMap(map)
        ..uid = id
        ..exists ??= true);

  static FireCrud<AppUser> user() => FireCrud<AppUser>(
      usageTracker: (event) => usage += event,
      collection: FirebaseFirestore.instance.collection("user"),
      toMap: (t) => t.toMap(),
      emptyObject: AppUser(
        email: "",
        firstName: "",
        lastName: "",
      )..exists = false,
      fromMap: (id, map) => UserMapper.fromMap(map)
        ..uid = id
        ..exists ??= true);
}
