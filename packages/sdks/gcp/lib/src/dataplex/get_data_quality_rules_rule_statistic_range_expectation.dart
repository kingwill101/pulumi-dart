// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataQualityRulesRuleStatisticRangeExpectation {
  /// The maximum column value allowed for a row to pass this validation.
  final pulumi.Input<String> maxValue;
  /// The minimum column value allowed for a row to pass this validation.
  final pulumi.Input<String> minValue;
  /// The list of aggregate metrics a rule can be evaluated against.
  /// Possible values: ["STATISTIC_UNDEFINED", "MEAN", "MIN", "MAX"]
  final pulumi.Input<String> statistic;
  /// Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.
  final pulumi.Input<bool> strictMaxEnabled;
  /// Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.
  final pulumi.Input<bool> strictMinEnabled;

  /// Creates a new [GetDataQualityRulesRuleStatisticRangeExpectation].
  /// [maxValue] The maximum column value allowed for a row to pass this validation.
  /// [minValue] The minimum column value allowed for a row to pass this validation.
  /// [statistic] The list of aggregate metrics a rule can be evaluated against.
  /// [strictMaxEnabled] Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.
  /// [strictMinEnabled] Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.
  GetDataQualityRulesRuleStatisticRangeExpectation({
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

  factory GetDataQualityRulesRuleStatisticRangeExpectation.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRuleStatisticRangeExpectation(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
      statistic: pulumi.Input.fromValue(map['statistic'] as String),
      strictMaxEnabled: pulumi.Input.fromValue(map['strictMaxEnabled'] as bool),
      strictMinEnabled: pulumi.Input.fromValue(map['strictMinEnabled'] as bool),
    );
  }
}

