// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether each column value lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleRangeExpectation {
  /// Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final pulumi.Input<String>? maxValue;
  /// Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final pulumi.Input<String>? minValue;
  /// Optional. Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final pulumi.Input<bool>? strictMaxEnabled;
  /// Optional. Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final pulumi.Input<bool>? strictMinEnabled;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleRangeExpectation].
  /// [maxValue] Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  /// [minValue] Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  /// [strictMaxEnabled] Optional. Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  /// [strictMinEnabled] Optional. Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  GoogleCloudDataplexV1DataQualityRuleRangeExpectation({
    this.maxValue,
    this.minValue,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'strictMaxEnabled': ?strictMaxEnabled,
      'strictMinEnabled': ?strictMinEnabled,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleRangeExpectation(
      maxValue: (() { final guardedValue = map['maxValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minValue: (() { final guardedValue = map['minValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strictMaxEnabled: (() { final guardedValue = map['strictMaxEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      strictMinEnabled: (() { final guardedValue = map['strictMinEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

