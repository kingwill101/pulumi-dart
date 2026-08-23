// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id.dart';
import 'google_privacy_dlp_v2_info_type.dart';

/// A column with a semantic tag attached.
class GooglePrivacyDlpV2TaggedField {
  /// A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  final pulumi.Input<String>? customTag;
  /// Identifies the column.
  final pulumi.Input<GooglePrivacyDlpV2FieldId> field;
  /// If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data
  final pulumi.Input<Map<String, dynamic>>? inferred;
  /// A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported_by=RISK_ANALYSIS filter.
  final pulumi.Input<GooglePrivacyDlpV2InfoType>? infoType;

  /// Creates a new [GooglePrivacyDlpV2TaggedField].
  /// [customTag] A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  /// [field] Identifies the column.
  /// [inferred] If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data
  /// [infoType] A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported_by=RISK_ANALYSIS filter.
  const GooglePrivacyDlpV2TaggedField({
    this.customTag,
    required this.field,
    this.inferred,
    this.infoType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customTag': ?customTag,
      'field': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(field, (value) => value.toMap()),
      'inferred': ?inferred,
      'infoType': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2TaggedField.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TaggedField(
      customTag: (() { final guardedValue = map['customTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: pulumi.Input.fromValue(GooglePrivacyDlpV2FieldId.fromMap((map['field']! as Map).cast<String, dynamic>())),
      inferred: (() { final guardedValue = map['inferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      infoType: (() { final guardedValue = map['infoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2InfoType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
