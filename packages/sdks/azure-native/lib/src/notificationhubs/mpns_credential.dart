// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub MpnsCredential.
class MpnsCredential {
  /// Gets or sets the certificate key for this credential.
  final pulumi.Input<String> certificateKey;
  /// Gets or sets the MPNS certificate.
  final pulumi.Input<String> mpnsCertificate;
  /// Gets or sets the MPNS certificate Thumbprint
  final pulumi.Input<String> thumbprint;

  /// Creates a new [MpnsCredential].
  /// [certificateKey] Gets or sets the certificate key for this credential.
  /// [mpnsCertificate] Gets or sets the MPNS certificate.
  /// [thumbprint] Gets or sets the MPNS certificate Thumbprint
  const MpnsCredential({
    required this.certificateKey,
    required this.mpnsCertificate,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKey': certificateKey,
      'mpnsCertificate': mpnsCertificate,
      'thumbprint': thumbprint,
    };
  }

  factory MpnsCredential.fromMap(Map<String, dynamic> map) {
    return MpnsCredential(
      certificateKey: pulumi.Input.fromValue(map['certificateKey'] as String),
      mpnsCertificate: pulumi.Input.fromValue(map['mpnsCertificate'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}

