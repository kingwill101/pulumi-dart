// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_user_password_password.dart';

class ConnectionAuthConfigUserPassword {
  /// Password for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigUserPasswordPassword?>? password;
  /// Username for Authentication.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionAuthConfigUserPassword].
  /// [password] Password for Authentication.
  /// [username] Username for Authentication.
  const ConnectionAuthConfigUserPassword({
    this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigUserPasswordPassword, Map<String, dynamic>>(password, (value) => value.toMap()),
      'username': username,
    };
  }

  factory ConnectionAuthConfigUserPassword.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigUserPassword(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigUserPasswordPassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
