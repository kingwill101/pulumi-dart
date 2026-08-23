// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id.dart';

/// Compute numerical stats over an individual column, including number of distinct values and value count distribution.
class GooglePrivacyDlpV2CategoricalStatsConfig {
  /// Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
  final pulumi.Input<GooglePrivacyDlpV2FieldId>? field;

  /// Creates a new [GooglePrivacyDlpV2CategoricalStatsConfig].
  /// [field] Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.
  const GooglePrivacyDlpV2CategoricalStatsConfig({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(field, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2CategoricalStatsConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CategoricalStatsConfig(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2FieldId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
