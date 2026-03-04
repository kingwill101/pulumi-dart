// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether the column aggregate statistic lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse {
  /// Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final pulumi.Input<String> maxValue;

  /// Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final pulumi.Input<String> minValue;

  /// Optional. The aggregate metric to evaluate.
  final pulumi.Input<String> statistic;

  /// Optional. Whether column statistic needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final pulumi.Input<bool> strictMaxEnabled;

  /// Optional. Whether column statistic needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final pulumi.Input<bool> strictMinEnabled;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse].
  /// [maxValue] Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [minValue] Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [statistic] Optional. The aggregate metric to evaluate.
  /// [strictMaxEnabled] Optional. Whether column statistic needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  /// [strictMinEnabled] Optional. Whether column statistic needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse({
    required this.maxValue,
    required this.minValue,
    required this.statistic,
    required this.strictMaxEnabled,
    required this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
      'statistic': statistic,
      'strictMaxEnabled': strictMaxEnabled,
      'strictMinEnabled': strictMinEnabled,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
      statistic: pulumi.Input.fromValue(map['statistic'] as String),
      strictMaxEnabled: pulumi.Input.fromValue(map['strictMaxEnabled'] as bool),
      strictMinEnabled: pulumi.Input.fromValue(map['strictMinEnabled'] as bool),
    );
  }
}
