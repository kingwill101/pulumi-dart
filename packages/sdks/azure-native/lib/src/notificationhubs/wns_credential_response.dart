// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub WnsCredential.
class WnsCredentialResponse {
  /// Ges or sets the WNS Certificate Key.
  final pulumi.Input<String>? certificateKey;
  /// Gets or sets the package ID for this credential.
  final pulumi.Input<String>? packageSid;
  /// Gets or sets the secret key.
  final pulumi.Input<String>? secretKey;
  /// Gets or sets the Windows Live endpoint.
  final pulumi.Input<String>? windowsLiveEndpoint;
  /// Gets or sets the WNS Certificate.
  final pulumi.Input<String>? wnsCertificate;

  /// Creates a new [WnsCredentialResponse].
  /// [certificateKey] Ges or sets the WNS Certificate Key.
  /// [packageSid] Gets or sets the package ID for this credential.
  /// [secretKey] Gets or sets the secret key.
  /// [windowsLiveEndpoint] Gets or sets the Windows Live endpoint.
  /// [wnsCertificate] Gets or sets the WNS Certificate.
  WnsCredentialResponse({
    this.certificateKey,
    this.packageSid,
    this.secretKey,
    this.windowsLiveEndpoint,
    this.wnsCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKey': ?certificateKey,
      'packageSid': ?packageSid,
      'secretKey': ?secretKey,
      'windowsLiveEndpoint': ?windowsLiveEndpoint,
      'wnsCertificate': ?wnsCertificate,
    };
  }

  factory WnsCredentialResponse.fromMap(Map<String, dynamic> map) {
    return WnsCredentialResponse(
      certificateKey: map['certificateKey'] == null ? null : (map['certificateKey']! as String).input(),
      packageSid: map['packageSid'] == null ? null : (map['packageSid']! as String).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey']! as String).input(),
      windowsLiveEndpoint: map['windowsLiveEndpoint'] == null ? null : (map['windowsLiveEndpoint']! as String).input(),
      wnsCertificate: map['wnsCertificate'] == null ? null : (map['wnsCertificate']! as String).input(),
    );
  }
}

