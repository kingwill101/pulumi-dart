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
      issuerUri: (() {
        final guardedValue = map['issuerUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
