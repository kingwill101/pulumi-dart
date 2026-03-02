// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kms_wrapped_crypto_key.dart';

/// Shift a date forward or backward in time by a random amount which is consistent for a given patient and crypto key combination.
class DateShiftConfig {
  /// An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If the patient ID is empty for a DICOM resource, the date shift is computed based on this key and the study instance UID. If `crypto_key` is not set, then `kms_wrapped` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `kms_wrapped` is set.
  final pulumi.Input<String>? cryptoKey;
  /// KMS wrapped key. If `kms_wrapped` is not set, then `crypto_key` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `crypto_key` is set.
  final pulumi.Input<KmsWrappedCryptoKey>? kmsWrapped;

  /// Creates a new [DateShiftConfig].
  /// [cryptoKey] An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If the patient ID is empty for a DICOM resource, the date shift is computed based on this key and the study instance UID. If `crypto_key` is not set, then `kms_wrapped` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `kms_wrapped` is set.
  /// [kmsWrapped] KMS wrapped key. If `kms_wrapped` is not set, then `crypto_key` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `crypto_key` is set.
  DateShiftConfig({
    this.cryptoKey,
    this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': ?cryptoKey,
      'kmsWrapped': ?pulumi.Input.mapOptionalInputValue<KmsWrappedCryptoKey, Map<String, dynamic>>(kmsWrapped, (value) => value.toMap()),
    };
  }

  factory DateShiftConfig.fromMap(Map<String, dynamic> map) {
    return DateShiftConfig(
      cryptoKey: map['cryptoKey'] == null ? null : (map['cryptoKey'] as String).input(),
      kmsWrapped: map['kmsWrapped'] == null ? null : (KmsWrappedCryptoKey.fromMap((map['kmsWrapped'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

