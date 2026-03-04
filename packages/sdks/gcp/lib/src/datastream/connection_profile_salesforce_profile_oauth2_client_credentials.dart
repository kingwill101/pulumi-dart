// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileSalesforceProfileOauth2ClientCredentials {
  /// Client ID to use for authentication.
  final pulumi.Input<String>? clientId;

  /// Client secret to use for authentication.
  final pulumi.Input<String>? clientSecret;

  /// A reference to a Secret Manager resource name storing the client secret.
  final pulumi.Input<String>? secretManagerStoredClientSecret;

  /// Creates a new [ConnectionProfileSalesforceProfileOauth2ClientCredentials].
  /// [clientId] Client ID to use for authentication.
  /// [clientSecret] Client secret to use for authentication.
  /// [secretManagerStoredClientSecret] A reference to a Secret Manager resource name storing the client secret.
  ConnectionProfileSalesforceProfileOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
    this.secretManagerStoredClientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'secretManagerStoredClientSecret': ?secretManagerStoredClientSecret,
    };
  }

  factory ConnectionProfileSalesforceProfileOauth2ClientCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionProfileSalesforceProfileOauth2ClientCredentials(
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretManagerStoredClientSecret: (() {
        final guardedValue = map['secretManagerStoredClientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
