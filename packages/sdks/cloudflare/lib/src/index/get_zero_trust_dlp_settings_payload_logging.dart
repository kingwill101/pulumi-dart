// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpSettingsPayloadLogging {
  /// Masking level for payload logs.
  final pulumi.Input<String> maskingLevel;
  /// Base64-encoded public key for encrypting payload logs. Null when payload logging is disabled.
  final pulumi.Input<String> publicKey;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDlpSettingsPayloadLogging].
  /// [maskingLevel] Masking level for payload logs.
  /// [publicKey] Base64-encoded public key for encrypting payload logs. Null when payload logging is disabled.
  /// [updatedAt] Required.
  const GetZeroTrustDlpSettingsPayloadLogging({
    required this.maskingLevel,
    required this.publicKey,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maskingLevel': maskingLevel,
      'publicKey': publicKey,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDlpSettingsPayloadLogging.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSettingsPayloadLogging(
      maskingLevel: pulumi.Input.fromValue(map['maskingLevel'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
