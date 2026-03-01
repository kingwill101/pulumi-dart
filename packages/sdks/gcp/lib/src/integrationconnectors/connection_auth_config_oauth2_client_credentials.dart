// ignore_for_file: unused_element, unnecessary_cast

import 'connection_auth_config_oauth2_client_credentials_client_secret.dart';

class ConnectionAuthConfigOauth2ClientCredentials {
  /// Secret version of Password for Authentication.
  final String clientId;
  /// Secret version reference containing the client secret.
  final ConnectionAuthConfigOauth2ClientCredentialsClientSecret? clientSecret;

  /// Creates a new [ConnectionAuthConfigOauth2ClientCredentials].
  /// [clientId] Secret version of Password for Authentication.
  /// [clientSecret] Secret version reference containing the client secret.
  ConnectionAuthConfigOauth2ClientCredentials({
    required this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
    };
  }

  factory ConnectionAuthConfigOauth2ClientCredentials.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2ClientCredentials(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : ConnectionAuthConfigOauth2ClientCredentialsClientSecret.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
    );
  }
}

