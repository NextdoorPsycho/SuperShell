// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserMapper extends ClassMapperBase<AppUser> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static String _$firstName(AppUser v) => v.firstName;
  static const Field<AppUser, String> _f$firstName = Field('firstName', _$firstName);
  static String _$lastName(AppUser v) => v.lastName;
  static const Field<AppUser, String> _f$lastName = Field('lastName', _$lastName);
  static String _$email(AppUser v) => v.email;
  static const Field<AppUser, String> _f$email = Field('email', _$email);
  static String? _$uid(AppUser v) => v.uid;
  static const Field<AppUser, String> _f$uid = Field('uid', _$uid, mode: FieldMode.member);
  static bool? _$exists(AppUser v) => v.exists;
  static const Field<AppUser, bool> _f$exists = Field('exists', _$exists, mode: FieldMode.member);

  @override
  final MappableFields<AppUser> fields = const {
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #email: _f$email,
    #uid: _f$uid,
    #exists: _f$exists,
  };

  static AppUser _instantiate(DecodingData data) {
    return AppUser(firstName: data.dec(_f$firstName), lastName: data.dec(_f$lastName), email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static AppUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppUser>(map);
  }

  static AppUser fromJson(String json) {
    return ensureInitialized().decodeJson<AppUser>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<AppUser>(this as AppUser);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<AppUser>(this as AppUser);
  }

  UserCopyWith<AppUser, AppUser, AppUser> get copyWith => _UserCopyWithImpl(this as AppUser, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as AppUser);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as AppUser, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as AppUser);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, AppUser, $Out> {
  UserCopyWith<$R, AppUser, $Out> get $asUser => $base.as((v, t, t2) => _UserCopyWithImpl(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends AppUser, $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? firstName, String? lastName, String? email});
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, AppUser, $Out> implements UserCopyWith<$R, AppUser, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppUser> $mapper = UserMapper.ensureInitialized();
  @override
  $R call({String? firstName, String? lastName, String? email}) => $apply(FieldCopyWithData({if (firstName != null) #firstName: firstName, if (lastName != null) #lastName: lastName, if (email != null) #email: email}));
  @override
  AppUser $make(CopyWithData data) => AppUser(firstName: data.get(#firstName, or: $value.firstName), lastName: data.get(#lastName, or: $value.lastName), email: data.get(#email, or: $value.email));

  @override
  UserCopyWith<$R2, AppUser, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) => _UserCopyWithImpl($value, $cast, t);
}
