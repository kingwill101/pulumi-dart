// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_date_shift_config_crypto_key_kms_wrapped.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_date_shift_config_crypto_key_transient.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_date_shift_config_crypto_key_unwrapped.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKey {
  /// KMS wrapped key.
  /// Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
  /// For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key). Only one of this, `transient` or `unwrapped` must be specified.
  /// Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing).
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped?>? kmsWrapped;
  /// Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, `unwrapped` or `kmsWrapped` must be specified.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyTransient?>? transient;
  /// Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, `transient` or `kmsWrapped` must be specified.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped?>? unwrapped;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKey].
  /// [kmsWrapped] KMS wrapped key.
  /// [transient] Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, `unwrapped` or `kmsWrapped` must be specified.
  /// [unwrapped] Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, `transient` or `kmsWrapped` must be specified.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsWrapped': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped, Map<String, dynamic>>(kmsWrapped, (value) => value.toMap()),
      'transient': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyTransient, Map<String, dynamic>>(transient, (value) => value.toMap()),
      'unwrapped': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped, Map<String, dynamic>>(unwrapped, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKey.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKey(
      kmsWrapped: (() { final guardedValue = map['kmsWrapped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transient: (() { final guardedValue = map['transient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyTransient.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unwrapped: (() { final guardedValue = map['unwrapped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
