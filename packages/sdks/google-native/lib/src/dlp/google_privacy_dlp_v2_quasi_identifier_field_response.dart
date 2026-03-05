// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';

/// A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2QuasiIdentifierFieldResponse {
  /// A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  final pulumi.Input<String> customTag;
  /// Identifies the column.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> field;

  /// Creates a new [GooglePrivacyDlpV2QuasiIdentifierFieldResponse].
  /// [customTag] A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  /// [field] Identifies the column.
  GooglePrivacyDlpV2QuasiIdentifierFieldResponse({
    required this.customTag,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customTag': customTag,
      'field': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(field, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2QuasiIdentifierFieldResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2QuasiIdentifierFieldResponse(
      customTag: pulumi.Input.fromValue(map['customTag'] as String),
      field: pulumi.Input.fromValue(GooglePrivacyDlpV2FieldIdResponse.fromMap((map['field']! as Map).cast<String, dynamic>())),
    );
  }
}

