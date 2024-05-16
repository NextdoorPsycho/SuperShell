import 'package:dart_mappable/dart_mappable.dart';

part 'capabilities.mapper.dart';

//Make Sure that if you modify this class, you run the command:
//  build-runner: flutter pub run build_runner build --delete-conflicting-outputs
// its in the pubspec.yml file!
@MappableClass()
class UserCapabilities with UserCapabilitiesMappable {
  final bool admin;
  String? uid;
  bool? exists;

  UserCapabilities({
    this.admin = false,
  });
}
