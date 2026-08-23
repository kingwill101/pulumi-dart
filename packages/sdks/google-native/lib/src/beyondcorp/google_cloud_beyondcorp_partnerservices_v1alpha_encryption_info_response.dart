// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message contains the JWT encryption information for the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse {
  /// Optional. Service Account for encryption key.
  final pulumi.Input<String> encryptionSaEmail;
  /// Optional. JWK in string.
  final pulumi.Input<String> jwk;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse].
  /// [encryptionSaEmail] Optional. Service Account for encryption key.
  /// [jwk] Optional. JWK in string.
  const GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse({
    required this.encryptionSaEmail,
    required this.jwk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSaEmail': encryptionSaEmail,
      'jwk': jwk,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse(
      encryptionSaEmail: pulumi.Input.fromValue(map['encryptionSaEmail'] as String),
      jwk: pulumi.Input.fromValue(map['jwk'] as String),
    );
  }
}
