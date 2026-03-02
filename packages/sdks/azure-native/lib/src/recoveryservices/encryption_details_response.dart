// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption details for the fabric.
class EncryptionDetailsResponse {
  /// The key encryption key certificate expiry date.
  final pulumi.Input<String>? kekCertExpiryDate;
  /// The key encryption key certificate thumbprint.
  final pulumi.Input<String>? kekCertThumbprint;
  /// The key encryption key state for the Vmm.
  final pulumi.Input<String>? kekState;

  /// Creates a new [EncryptionDetailsResponse].
  /// [kekCertExpiryDate] The key encryption key certificate expiry date.
  /// [kekCertThumbprint] The key encryption key certificate thumbprint.
  /// [kekState] The key encryption key state for the Vmm.
  EncryptionDetailsResponse({
    this.kekCertExpiryDate,
    this.kekCertThumbprint,
    this.kekState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekCertExpiryDate': ?kekCertExpiryDate,
      'kekCertThumbprint': ?kekCertThumbprint,
      'kekState': ?kekState,
    };
  }

  factory EncryptionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionDetailsResponse(
      kekCertExpiryDate: map['kekCertExpiryDate'] == null ? null : (map['kekCertExpiryDate']! as String).input(),
      kekCertThumbprint: map['kekCertThumbprint'] == null ? null : (map['kekCertThumbprint']! as String).input(),
      kekState: map['kekState'] == null ? null : (map['kekState']! as String).input(),
    );
  }
}

