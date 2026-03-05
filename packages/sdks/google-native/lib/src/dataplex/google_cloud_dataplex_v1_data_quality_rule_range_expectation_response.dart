// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether each column value lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse {
  /// Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final pulumi.Input<String> maxValue;
  /// Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final pulumi.Input<String> minValue;
  /// Optional. Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final pulumi.Input<bool> strictMaxEnabled;
  /// Optional. Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final pulumi.Input<bool> strictMinEnabled;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse].
  /// [maxValue] Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  /// [minValue] Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  /// [strictMaxEnabled] Optional. Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  /// [strictMinEnabled] Optional. Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse({
    required this.maxValue,
    required this.minValue,
    required this.strictMaxEnabled,
    required this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
      'strictMaxEnabled': strictMaxEnabled,
      'strictMinEnabled': strictMinEnabled,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
      strictMaxEnabled: pulumi.Input.fromValue(map['strictMaxEnabled'] as bool),
      strictMinEnabled: pulumi.Input.fromValue(map['strictMinEnabled'] as bool),
    );
  }
}

