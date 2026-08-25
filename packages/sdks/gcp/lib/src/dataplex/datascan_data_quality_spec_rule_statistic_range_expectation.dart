// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleStatisticRangeExpectation {
  /// The maximum column statistic value allowed for a row to pass this validation.
  /// At least one of minValue and maxValue need to be provided.
  final pulumi.Input<String?>? maxValue;
  /// The minimum column statistic value allowed for a row to pass this validation.
  /// At least one of minValue and maxValue need to be provided.
  final pulumi.Input<String?>? minValue;
  /// column statistics.
  /// Possible values are: `STATISTIC_UNDEFINED`, `MEAN`, `MIN`, `MAX`.
  final pulumi.Input<String> statistic;
  /// Whether column statistic needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.
  /// Only relevant if a maxValue has been defined. Default = false.
  final pulumi.Input<bool?>? strictMaxEnabled;
  /// Whether column statistic needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.
  /// Only relevant if a minValue has been defined. Default = false.
  final pulumi.Input<bool?>? strictMinEnabled;

  /// Creates a new [DatascanDataQualitySpecRuleStatisticRangeExpectation].
  /// [maxValue] The maximum column statistic value allowed for a row to pass this validation.
  /// [minValue] The minimum column statistic value allowed for a row to pass this validation.
  /// [statistic] column statistics.
  /// [strictMaxEnabled] Whether column statistic needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.
  /// [strictMinEnabled] Whether column statistic needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.
  const DatascanDataQualitySpecRuleStatisticRangeExpectation({
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
      maxValue: (() { final guardedValue = map['maxValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minValue: (() { final guardedValue = map['minValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statistic: pulumi.Input.fromValue(map['statistic'] as String),
      strictMaxEnabled: (() { final guardedValue = map['strictMaxEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      strictMinEnabled: (() { final guardedValue = map['strictMinEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
