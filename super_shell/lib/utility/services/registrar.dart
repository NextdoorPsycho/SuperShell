import 'package:serviced/serviced.dart';
import 'package:super_shell/utility/services/bloc/bloc.dart';
import 'package:super_shell/utility/services/hive.dart';
import 'package:super_shell/utility/services/logging.dart';
import 'package:super_shell/utility/services/login.dart';
import 'package:super_shell/utility/services/user.dart';
import 'package:super_shell/utility/services/widget_binding.dart';

Future<void> registerServices() async {
  services().register<WidgetsBindingService>(() => WidgetsBindingService(),
      lazy: false);
  // Uncomment this once you have Setup Firebase!
  // services().register<FirebaseService>(() => FirebaseService(), lazy: false);
  services().register<BlocService>(() => BlocService(), lazy: false);
  services().register<UserService>(() => UserService(), lazy: true);
  services().register<LoginService>(() => LoginService(), lazy: true);
  services().register<HiveService>(() => HiveService(), lazy: false);
  services().register<LoggingService>(() => LoggingService(), lazy: false);
  await services().waitForStartup();
}
