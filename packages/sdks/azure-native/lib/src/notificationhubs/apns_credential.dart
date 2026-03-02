// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub ApnsCredential.
class ApnsCredential {
  /// Gets or sets the APNS certificate.
  final pulumi.Input<String>? apnsCertificate;
  /// Gets or sets the issuer (iss) registered claim key, whose value is
  /// your 10-character Team ID, obtained from your developer account
  final pulumi.Input<String>? appId;
  /// Gets or sets the name of the application
  final pulumi.Input<String>? appName;
  /// Gets or sets the certificate key.
  final pulumi.Input<String>? certificateKey;
  /// Gets or sets the endpoint of this credential.
  final pulumi.Input<String> endpoint;
  /// Gets or sets a 10-character key identifier (kid) key, obtained from
  /// your developer account
  final pulumi.Input<String>? keyId;
  /// Gets or sets the APNS certificate Thumbprint
  final pulumi.Input<String>? thumbprint;
  /// Gets or sets provider Authentication Token, obtained through your
  /// developer account
  final pulumi.Input<String>? token;

  /// Creates a new [ApnsCredential].
  /// [apnsCertificate] Gets or sets the APNS certificate.
  /// [appId] Gets or sets the issuer (iss) registered claim key, whose value is
  /// [appName] Gets or sets the name of the application
  /// [certificateKey] Gets or sets the certificate key.
  /// [endpoint] Gets or sets the endpoint of this credential.
  /// [keyId] Gets or sets a 10-character key identifier (kid) key, obtained from
  /// [thumbprint] Gets or sets the APNS certificate Thumbprint
  /// [token] Gets or sets provider Authentication Token, obtained through your
  ApnsCredential({
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

  factory ApnsCredential.fromMap(Map<String, dynamic> map) {
    return ApnsCredential(
      apnsCertificate: map['apnsCertificate'] == null ? null : (map['apnsCertificate']! as String).input(),
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      appName: map['appName'] == null ? null : (map['appName']! as String).input(),
      certificateKey: map['certificateKey'] == null ? null : (map['certificateKey']! as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      keyId: map['keyId'] == null ? null : (map['keyId']! as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
    );
  }
}

