// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_config_auth_config_user_password_password.dart';

class ConnectionEventingConfigAuthConfigUserPassword {
  /// Password for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigAuthConfigUserPasswordPassword>? password;
  /// Username for Authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionEventingConfigAuthConfigUserPassword].
  /// [password] Password for Authentication.
  /// [username] Username for Authentication.
  ConnectionEventingConfigAuthConfigUserPassword({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingConfigAuthConfigUserPasswordPassword, Map<String, dynamic>>(password, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory ConnectionEventingConfigAuthConfigUserPassword.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfigUserPassword(
      password: map['password'] == null ? null : (ConnectionEventingConfigAuthConfigUserPasswordPassword.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

