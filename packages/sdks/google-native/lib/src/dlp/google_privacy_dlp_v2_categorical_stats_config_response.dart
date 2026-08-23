// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';

/// Compute numerical stats over an individual column, including number of distinct values and value count distribution.
class GooglePrivacyDlpV2CategoricalStatsConfigResponse {
  /// Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> field;

  /// Creates a new [GooglePrivacyDlpV2CategoricalStatsConfigResponse].
  /// [field] Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
  const GooglePrivacyDlpV2CategoricalStatsConfigResponse({
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(field, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2CategoricalStatsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CategoricalStatsConfigResponse(
      field: pulumi.Input.fromValue(GooglePrivacyDlpV2FieldIdResponse.fromMap((map['field']! as Map).cast<String, dynamic>())),
    );
  }
}
