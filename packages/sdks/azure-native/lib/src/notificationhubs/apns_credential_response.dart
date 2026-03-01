// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub ApnsCredential.
class ApnsCredentialResponse {
  /// Gets or sets the APNS certificate.
  final String? apnsCertificate;
  /// Gets or sets the issuer (iss) registered claim key, whose value is
  /// your 10-character Team ID, obtained from your developer account
  final String? appId;
  /// Gets or sets the name of the application
  final String? appName;
  /// Gets or sets the certificate key.
  final String? certificateKey;
  /// Gets or sets the endpoint of this credential.
  final String endpoint;
  /// Gets or sets a 10-character key identifier (kid) key, obtained from
  /// your developer account
  final String? keyId;
  /// Gets or sets the APNS certificate Thumbprint
  final String? thumbprint;
  /// Gets or sets provider Authentication Token, obtained through your
  /// developer account
  final String? token;

  /// Creates a new [ApnsCredentialResponse].
  /// [apnsCertificate] Gets or sets the APNS certificate.
  /// [appId] Gets or sets the issuer (iss) registered claim key, whose value is
  /// [appName] Gets or sets the name of the application
  /// [certificateKey] Gets or sets the certificate key.
  /// [endpoint] Gets or sets the endpoint of this credential.
  /// [keyId] Gets or sets a 10-character key identifier (kid) key, obtained from
  /// [thumbprint] Gets or sets the APNS certificate Thumbprint
  /// [token] Gets or sets provider Authentication Token, obtained through your
  ApnsCredentialResponse({
    this.apnsCertificate,
    this.appId,
    this.appName,
    this.certificateKey,
    required this.endpoint,
    this.keyId,
    this.thumbprint,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apnsCertificate': ?apnsCertificate,
      'appId': ?appId,
      'appName': ?appName,
      'certificateKey': ?certificateKey,
      'endpoint': endpoint,
      'keyId': ?keyId,
      'thumbprint': ?thumbprint,
      'token': ?token,
    };
  }

  factory ApnsCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ApnsCredentialResponse(
      apnsCertificate: map['apnsCertificate'] == null ? null : map['apnsCertificate'] as String,
      appId: map['appId'] == null ? null : map['appId'] as String,
      appName: map['appName'] == null ? null : map['appName'] as String,
      certificateKey: map['certificateKey'] == null ? null : map['certificateKey'] as String,
      endpoint: map['endpoint'] as String,
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}

