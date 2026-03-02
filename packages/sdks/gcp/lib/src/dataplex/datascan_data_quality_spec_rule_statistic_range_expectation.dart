// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleStatisticRangeExpectation {
  /// The maximum column statistic value allowed for a row to pass this validation.
  /// At least one of minValue and maxValue need to be provided.
  final pulumi.Input<String>? maxValue;
  /// The minimum column statistic value allowed for a row to pass this validation.
  /// At least one of minValue and maxValue need to be provided.
  final pulumi.Input<String>? minValue;
  /// column statistics.
  /// Possible values are: `STATISTIC_UNDEFINED`, `MEAN`, `MIN`, `MAX`.
  final pulumi.Input<String> statistic;
  /// Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  /// Only relevant if a maxValue has been defined. Default = false.
  final pulumi.Input<bool>? strictMaxEnabled;
  /// Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  /// Only relevant if a minValue has been defined. Default = false.
  final pulumi.Input<bool>? strictMinEnabled;

  /// Creates a new [DatascanDataQualitySpecRuleStatisticRangeExpectation].
  /// [maxValue] The maximum column statistic value allowed for a row to pass this validation.
  /// [minValue] The minimum column statistic value allowed for a row to pass this validation.
  /// [statistic] column statistics.
  /// [strictMaxEnabled] Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  /// [strictMinEnabled] Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  DatascanDataQualitySpecRuleStatisticRangeExpectation({
    this.maxValue,
    this.minValue,
    required this.statistic,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'statistic': statistic,
      'strictMaxEnabled': ?strictMaxEnabled,
      'strictMinEnabled': ?strictMinEnabled,
    };
  }

  factory DatascanDataQualitySpecRuleStatisticRangeExpectation.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleStatisticRangeExpectation(
      maxValue: map['maxValue'] == null ? null : (map['maxValue'] as String).input(),
      minValue: map['minValue'] == null ? null : (map['minValue'] as String).input(),
      statistic: (map['statistic'] as String).input(),
      strictMaxEnabled: map['strictMaxEnabled'] == null ? null : (map['strictMaxEnabled'] as bool).input(),
      strictMinEnabled: map['strictMinEnabled'] == null ? null : (map['strictMinEnabled'] as bool).input(),
    );
  }
}

