// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_character_mask_config_characters_to_ignore.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig {
  /// Characters to skip when doing de-identification of a value. These will be left alone and skipped.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore>?>? charactersToIgnores;
  /// Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string
  /// such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for
  /// strings, and 0 for digits.
  final pulumi.Input<String?>? maskingCharacter;
  /// Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally.
  /// If numberToMask is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values:
  final pulumi.Input<int?>? numberToMask;
  /// Mask characters in reverse order. For example, if maskingCharacter is 0, numberToMask is 14, and reverseOrder is `false`, then the
  /// input string `1234-5678-9012-3456` is masked as `00000000000000-3456`.
  final pulumi.Input<bool?>? reverseOrder;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig].
  /// [charactersToIgnores] Characters to skip when doing de-identification of a value. These will be left alone and skipped.
  /// [maskingCharacter] Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string
  /// [numberToMask] Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally.
  /// [reverseOrder] Mask characters in reverse order. For example, if maskingCharacter is 0, numberToMask is 14, and reverseOrder is `false`, then the
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig({
    this.charactersToIgnores,
    this.maskingCharacter,
    this.numberToMask,
    this.reverseOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charactersToIgnores': ?pulumi.Input.mapOptionalInputValue<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore>, List<Map<String, dynamic>>>(charactersToIgnores, (value) => pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maskingCharacter': ?maskingCharacter,
      'numberToMask': ?numberToMask,
      'reverseOrder': ?reverseOrder,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig(
      charactersToIgnores: (() { final guardedValue = map['charactersToIgnores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore>(guardedValue, (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnore.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maskingCharacter: (() { final guardedValue = map['maskingCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberToMask: (() { final guardedValue = map['numberToMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      reverseOrder: (() { final guardedValue = map['reverseOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
