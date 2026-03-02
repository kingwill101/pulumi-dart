// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewaySso {
  /// The public identifier for the application.
  final pulumi.Input<String>? clientId;
  /// The secret known only to the application and the authorization server.
  final pulumi.Input<String>? clientSecret;
  /// The URI of Issuer Identifier.
  final pulumi.Input<String>? issuerUri;
  /// It defines the specific actions applications can be allowed to do on a user's behalf.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [SpringCloudGatewaySso].
  /// [clientId] The public identifier for the application.
  /// [clientSecret] The secret known only to the application and the authorization server.
  /// [issuerUri] The URI of Issuer Identifier.
  /// [scopes] It defines the specific actions applications can be allowed to do on a user's behalf.
  SpringCloudGatewaySso({
    this.clientId,
    this.clientSecret,
    this.issuerUri,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'issuerUri': ?issuerUri,
      'scopes': ?scopes,
    };
  }

  factory SpringCloudGatewaySso.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewaySso(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      issuerUri: map['issuerUri'] == null ? null : (map['issuerUri'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

