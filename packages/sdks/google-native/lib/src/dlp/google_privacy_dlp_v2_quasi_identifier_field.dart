// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id.dart';

/// A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2QuasiIdentifierField {
  /// A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  final pulumi.Input<String>? customTag;
  /// Identifies the column.
  final pulumi.Input<GooglePrivacyDlpV2FieldId>? field;

  /// Creates a new [GooglePrivacyDlpV2QuasiIdentifierField].
  /// [customTag] A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  /// [field] Identifies the column.
  const GooglePrivacyDlpV2QuasiIdentifierField({
    this.customTag,
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customTag': ?customTag,
      'field': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(field, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2QuasiIdentifierField.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2QuasiIdentifierField(
      customTag: (() { final guardedValue = map['customTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2FieldId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
