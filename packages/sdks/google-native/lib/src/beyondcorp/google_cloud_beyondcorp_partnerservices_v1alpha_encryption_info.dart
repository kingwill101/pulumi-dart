// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message contains the JWT encryption information for the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo {
  /// Optional. Service Account for encryption key.
  final pulumi.Input<String>? encryptionSaEmail;

  /// Optional. JWK in string.
  final pulumi.Input<String>? jwk;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo].
  /// [encryptionSaEmail] Optional. Service Account for encryption key.
  /// [jwk] Optional. JWK in string.
  GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo({
    this.encryptionSaEmail,
    this.jwk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSaEmail': ?encryptionSaEmail,
      'jwk': ?jwk,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo(
      encryptionSaEmail: (() {
        final guardedValue = map['encryptionSaEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jwk: (() {
        final guardedValue = map['jwk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
