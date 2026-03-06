// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id.dart';

/// A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2QuasiIdField {
  /// A auxiliary field.
  final pulumi.Input<String>? customTag;
  /// Identifies the column.
  final pulumi.Input<GooglePrivacyDlpV2FieldId>? field;

  /// Creates a new [GooglePrivacyDlpV2QuasiIdField].
  /// [customTag] A auxiliary field.
  /// [field] Identifies the column.
  const GooglePrivacyDlpV2QuasiIdField({
    this.customTag,
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customTag': ?customTag,
      'field': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(field, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2QuasiIdField.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2QuasiIdField(
      customTag: (() { final guardedValue = map['customTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2FieldId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

