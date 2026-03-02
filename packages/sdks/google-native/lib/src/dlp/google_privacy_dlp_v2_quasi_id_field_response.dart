// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';

/// A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2QuasiIdFieldResponse {
  /// A auxiliary field.
  final pulumi.Input<String> customTag;
  /// Identifies the column.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> field;

  /// Creates a new [GooglePrivacyDlpV2QuasiIdFieldResponse].
  /// [customTag] A auxiliary field.
  /// [field] Identifies the column.
  GooglePrivacyDlpV2QuasiIdFieldResponse({
    required this.customTag,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customTag': customTag,
      'field': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(field, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2QuasiIdFieldResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2QuasiIdFieldResponse(
      customTag: (map['customTag'] as String).input(),
      field: (GooglePrivacyDlpV2FieldIdResponse.fromMap((map['field'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

