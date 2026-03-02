// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileAlloydbSettingsInitialUser {
  /// The initial password for the user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> password;
  /// (Output)
  /// Output only. Indicates if the initialUser.password field has been set.
  final pulumi.Input<bool>? passwordSet;
  /// The database username.
  final pulumi.Input<String> user;

  /// Creates a new [ConnectionProfileAlloydbSettingsInitialUser].
  /// [password] The initial password for the user.
  /// [passwordSet] (Output)
  /// [user] The database username.
  ConnectionProfileAlloydbSettingsInitialUser({
    required this.password,
    this.passwordSet,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'passwordSet': ?passwordSet,
      'user': user,
    };
  }

  factory ConnectionProfileAlloydbSettingsInitialUser.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettingsInitialUser(
      password: (map['password'] as String).input(),
      passwordSet: map['passwordSet'] == null ? null : (map['passwordSet']! as bool).input(),
      user: (map['user'] as String).input(),
    );
  }
}

