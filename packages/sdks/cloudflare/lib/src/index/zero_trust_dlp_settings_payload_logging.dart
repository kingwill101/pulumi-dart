// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpSettingsPayloadLogging {
  /// Masking level for payload logs.
  ///
  /// - `full`: The entire payload is masked.
  /// - `partial`: Only partial payload content is masked.
  /// - `clear`: No masking is applied to the payload content.
  /// - `default`: DLP uses its default masking behavior.
  /// Available values: "full", "partial", "clear", "default".
  final pulumi.Input<String?>? maskingLevel;
  /// Base64-encoded public key for encrypting payload logs.
  ///
  /// - Set to a non-empty base64 string to enable payload logging with the given key.
  /// - Set to an empty string to disable payload logging.
  /// - Omit or set to null to leave unchanged (PATCH) or reset to disabled (PUT).
  final pulumi.Input<String?>? publicKey;

  /// Creates a new [ZeroTrustDlpSettingsPayloadLogging].
  /// [maskingLevel] Masking level for payload logs.
  /// [publicKey] Base64-encoded public key for encrypting payload logs.
  const ZeroTrustDlpSettingsPayloadLogging({
    this.maskingLevel,
    this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maskingLevel': ?maskingLevel,
      'publicKey': ?publicKey,
    };
  }

  factory ZeroTrustDlpSettingsPayloadLogging.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSettingsPayloadLogging(
      maskingLevel: (() { final guardedValue = map['maskingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
