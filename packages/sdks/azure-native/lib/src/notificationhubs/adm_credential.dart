// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub AdmCredential.
class AdmCredential {
  /// Gets or sets the URL of the authorization token.
  final pulumi.Input<String> authTokenUrl;

  /// Gets or sets the client identifier.
  final pulumi.Input<String> clientId;

  /// Gets or sets the credential secret access key.
  final pulumi.Input<String> clientSecret;

  /// Creates a new [AdmCredential].
  /// [authTokenUrl] Gets or sets the URL of the authorization token.
  /// [clientId] Gets or sets the client identifier.
  /// [clientSecret] Gets or sets the credential secret access key.
  AdmCredential({
    required this.authTokenUrl,
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authTokenUrl': authTokenUrl,
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory AdmCredential.fromMap(Map<String, dynamic> map) {
    return AdmCredential(
      authTokenUrl: pulumi.Input.fromValue(map['authTokenUrl'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
    );
  }
}
