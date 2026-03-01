// ignore_for_file: unused_element, unnecessary_cast


/// Message contains the JWT encryption information for the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse {
  /// Optional. Service Account for encryption key.
  final String encryptionSaEmail;
  /// Optional. JWK in string.
  final String jwk;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse].
  /// [encryptionSaEmail] Optional. Service Account for encryption key.
  /// [jwk] Optional. JWK in string.
  GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse({
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
      encryptionSaEmail: map['encryptionSaEmail'] as String,
      jwk: map['jwk'] as String,
    );
  }
}

