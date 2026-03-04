// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kms_wrapped_crypto_key_response_healthcare_v1beta1.dart';

/// Shift a date forward or backward in time by a random amount which is consistent for a given patient and crypto key combination.
class DateShiftConfigResponseHealthcareV1beta1 {
  /// An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If the patient ID is empty for a DICOM resource, the date shift is computed based on this key and the study instance UID. If crypto_key is not set, then kms_wrapped is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if kms_wrapped is set.
  final pulumi.Input<String> cryptoKey;

  /// KMS wrapped key. If kms_wrapped is not set, then crypto_key is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if crypto_key is set.
  final pulumi.Input<KmsWrappedCryptoKeyResponseHealthcareV1beta1> kmsWrapped;

  /// Creates a new [DateShiftConfigResponseHealthcareV1beta1].
  /// [cryptoKey] An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If the patient ID is empty for a DICOM resource, the date shift is computed based on this key and the study instance UID. If crypto_key is not set, then kms_wrapped is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if kms_wrapped is set.
  /// [kmsWrapped] KMS wrapped key. If kms_wrapped is not set, then crypto_key is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if crypto_key is set.
  DateShiftConfigResponseHealthcareV1beta1({
    required this.cryptoKey,
    required this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'kmsWrapped':
          pulumi.Input.mapInputValue<
            KmsWrappedCryptoKeyResponseHealthcareV1beta1,
            Map<String, dynamic>
          >(kmsWrapped, (value) => value.toMap()),
    };
  }

  factory DateShiftConfigResponseHealthcareV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DateShiftConfigResponseHealthcareV1beta1(
      cryptoKey: pulumi.Input.fromValue(map['cryptoKey'] as String),
      kmsWrapped: pulumi.Input.fromValue(
        KmsWrappedCryptoKeyResponseHealthcareV1beta1.fromMap(
          (map['kmsWrapped']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
