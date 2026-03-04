// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';
import 'google_privacy_dlp_v2_value_response.dart';

/// The field type of `value` and `field` do not need to match to be considered equal, but not all comparisons are possible. EQUAL_TO and NOT_EQUAL_TO attempt to compare even with incompatible types, but all other comparisons are invalid with incompatible types. A `value` of type: - `string` can be compared against all other types - `boolean` can only be compared against other booleans - `integer` can be compared against doubles or a string if the string value can be parsed as an integer. - `double` can be compared against integers or a string if the string can be parsed as a double. - `Timestamp` can be compared against strings in RFC 3339 date string format. - `TimeOfDay` can be compared against timestamps and strings in the format of 'HH:mm:ss'. If we fail to compare do to type mismatch, a warning will be given and the condition will evaluate to false.
class GooglePrivacyDlpV2ConditionResponse {
  /// Field within the record this condition is evaluated against.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> field;

  /// Operator used to compare the field or infoType to the value.
  final pulumi.Input<String> operator;

  /// Value to compare against. [Mandatory, except for `EXISTS` tests.]
  final pulumi.Input<GooglePrivacyDlpV2ValueResponse> value;

  /// Creates a new [GooglePrivacyDlpV2ConditionResponse].
  /// [field] Field within the record this condition is evaluated against.
  /// [operator] Operator used to compare the field or infoType to the value.
  /// [value] Value to compare against. [Mandatory, except for `EXISTS` tests.]
  GooglePrivacyDlpV2ConditionResponse({
    required this.field,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2FieldIdResponse,
            Map<String, dynamic>
          >(field, (value) => value.toMap()),
      'operator': operator,
      'value':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2ValueResponse,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ConditionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2ConditionResponse(
      field: pulumi.Input.fromValue(
        GooglePrivacyDlpV2FieldIdResponse.fromMap(
          (map['field']! as Map).cast<String, dynamic>(),
        ),
      ),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(
        GooglePrivacyDlpV2ValueResponse.fromMap(
          (map['value']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
