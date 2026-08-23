// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_oauth2_client_credentials_client_secret.dart';

class ConnectionAuthConfigOauth2ClientCredentials {
  /// Secret version of Password for Authentication.
  final pulumi.Input<String> clientId;
  /// Secret version reference containing the client secret.
  final pulumi.Input<ConnectionAuthConfigOauth2ClientCredentialsClientSecret>? clientSecret;

  /// Creates a new [ConnectionAuthConfigOauth2ClientCredentials].
  /// [clientId] Secret version of Password for Authentication.
  /// [clientSecret] Secret version reference containing the client secret.
  const ConnectionAuthConfigOauth2ClientCredentials({
    required this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigOauth2ClientCredentialsClientSecret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
    };
  }

  factory ConnectionAuthConfigOauth2ClientCredentials.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2ClientCredentials(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigOauth2ClientCredentialsClientSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
