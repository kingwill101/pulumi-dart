// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class Oauth2ClientCredentialsResponse {
  /// The client identifier.
  final pulumi.Input<String> clientId;
  /// Secret version reference containing the client secret.
  final pulumi.Input<SecretResponse> clientSecret;

  /// Creates a new [Oauth2ClientCredentialsResponse].
  /// [clientId] The client identifier.
  /// [clientSecret] Secret version reference containing the client secret.
  const Oauth2ClientCredentialsResponse({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
    };
  }

  factory Oauth2ClientCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return Oauth2ClientCredentialsResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(SecretResponse.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())),
    );
  }
}
