// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_configuration_authentication_username_password.dart';

class ConnectionConfigurationAuthentication {
  /// (Output)
  /// Output only. The service account used for authenticating with the connector.
  final pulumi.Input<String?>? serviceAccount;
  /// Username/password authentication configuration.
  /// Structure is documented below.
  final pulumi.Input<ConnectionConfigurationAuthenticationUsernamePassword?>? usernamePassword;

  /// Creates a new [ConnectionConfigurationAuthentication].
  /// [serviceAccount] (Output)
  /// [usernamePassword] Username/password authentication configuration.
  const ConnectionConfigurationAuthentication({
    this.serviceAccount,
    this.usernamePassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?serviceAccount,
      'usernamePassword': ?pulumi.Input.mapOptionalInputValue<ConnectionConfigurationAuthenticationUsernamePassword, Map<String, dynamic>>(usernamePassword, (value) => value.toMap()),
    };
  }

  factory ConnectionConfigurationAuthentication.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigurationAuthentication(
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernamePassword: (() { final guardedValue = map['usernamePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionConfigurationAuthenticationUsernamePassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
