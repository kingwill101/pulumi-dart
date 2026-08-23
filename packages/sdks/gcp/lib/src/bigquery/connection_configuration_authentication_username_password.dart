// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_configuration_authentication_username_password_password.dart';

class ConnectionConfigurationAuthenticationUsernamePassword {
  /// Password configuration for the connector.
  /// Structure is documented below.
  final pulumi.Input<ConnectionConfigurationAuthenticationUsernamePasswordPassword> password;
  /// Username for the connector.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionConfigurationAuthenticationUsernamePassword].
  /// [password] Password configuration for the connector.
  /// [username] Username for the connector.
  const ConnectionConfigurationAuthenticationUsernamePassword({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': pulumi.Input.mapInputValue<ConnectionConfigurationAuthenticationUsernamePasswordPassword, Map<String, dynamic>>(password, (value) => value.toMap()),
      'username': username,
    };
  }

  factory ConnectionConfigurationAuthenticationUsernamePassword.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigurationAuthenticationUsernamePassword(
      password: pulumi.Input.fromValue(ConnectionConfigurationAuthenticationUsernamePasswordPassword.fromMap((map['password']! as Map).cast<String, dynamic>())),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
