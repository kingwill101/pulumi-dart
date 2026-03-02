// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret.dart';

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class Oauth2ClientCredentials {
  /// The client identifier.
  final pulumi.Input<String>? clientId;
  /// Secret version reference containing the client secret.
  final pulumi.Input<Secret>? clientSecret;

  /// Creates a new [Oauth2ClientCredentials].
  /// [clientId] The client identifier.
  /// [clientSecret] Secret version reference containing the client secret.
  Oauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
    };
  }

  factory Oauth2ClientCredentials.fromMap(Map<String, dynamic> map) {
    return Oauth2ClientCredentials(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (Secret.fromMap((map['clientSecret'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

