import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

//Make Sure that if you modify this class, you run the command:
//  build-runner: flutter pub run build_runner build --delete-conflicting-outputs
// its in the pubspec.yml file!

@MappableClass()
class AppUser with UserMappable {
  final String firstName;
  final String lastName;
  final String email;
  String? uid;
  bool? exists;

  AppUser({required this.firstName, required this.lastName, required this.email});
}
