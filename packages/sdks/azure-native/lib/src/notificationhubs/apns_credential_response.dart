// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub ApnsCredential.
class ApnsCredentialResponse {
  /// Gets or sets the APNS certificate.
  final pulumi.Input<String?>? apnsCertificate;
  /// Gets or sets the issuer (iss) registered claim key, whose value is
  /// your 10-character Team ID, obtained from your developer account
  final pulumi.Input<String?>? appId;
  /// Gets or sets the name of the application
  final pulumi.Input<String?>? appName;
  /// Gets or sets the certificate key.
  final pulumi.Input<String?>? certificateKey;
  /// Gets or sets the endpoint of this credential.
  final pulumi.Input<String> endpoint;
  /// Gets or sets a 10-character key identifier (kid) key, obtained from
  /// your developer account
  final pulumi.Input<String?>? keyId;
  /// Gets or sets the APNS certificate Thumbprint
  final pulumi.Input<String?>? thumbprint;
  /// Gets or sets provider Authentication Token, obtained through your
  /// developer account
  final pulumi.Input<String?>? token;

  /// Creates a new [ApnsCredentialResponse].
  /// [apnsCertificate] Gets or sets the APNS certificate.
  /// [appId] Gets or sets the issuer (iss) registered claim key, whose value is
  /// [appName] Gets or sets the name of the application
  /// [certificateKey] Gets or sets the certificate key.
  /// [endpoint] Gets or sets the endpoint of this credential.
  /// [keyId] Gets or sets a 10-character key identifier (kid) key, obtained from
  /// [thumbprint] Gets or sets the APNS certificate Thumbprint
  /// [token] Gets or sets provider Authentication Token, obtained through your
  const ApnsCredentialResponse({
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
      apnsCertificate: (() { final guardedValue = map['apnsCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateKey: (() { final guardedValue = map['certificateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
