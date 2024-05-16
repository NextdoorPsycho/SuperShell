import 'package:fast_log/fast_log.dart';
import 'package:flutter/material.dart';
import 'package:serviced/serviced.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:super_shell/utility/data/crud/crud.dart';
import 'package:super_shell/utility/magic.dart';
import 'package:super_shell/utility/services/login.dart';
import 'package:super_shell/utility/services/user.dart';

class SSButton {
  static Widget themeToggle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShadButton(
          onPressed: () {
            info("Toggled Theme");
            // Crud.userSettings(u).txn("settings", (s) => s..toggleTheme());

            Crud.userSettings(u).update("settings", {
              "themeMode":
                  (svc<UserService>().lastUserSettings..toggleTheme()).themeMode
            });

            // Crud.userSettings(u).set(
            //     "settings", svc<UserService>().lastUserSettings..toggleTheme());
          },
          icon: Text(
            'Toggle Theme',
            style: ShadTheme.of(context).textTheme.p,
          ),
        ),
      ],
    );
  }

  static Widget signOut(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShadButton.destructive(
          onPressed: () {
            svc<LoginService>().signOutDialog(context);
          },
          icon: Text(
            'Sign Out',
            style: ShadTheme.of(context).textTheme.p,
          ),
        ),
      ],
    );
  }
}
