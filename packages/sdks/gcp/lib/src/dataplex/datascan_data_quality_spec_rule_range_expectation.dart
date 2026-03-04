// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleRangeExpectation {
  /// The maximum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  final pulumi.Input<String>? maxValue;

  /// The minimum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  final pulumi.Input<String>? minValue;

  /// Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.
  /// Only relevant if a maxValue has been defined. Default = false.
  final pulumi.Input<bool>? strictMaxEnabled;

  /// Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.
  /// Only relevant if a minValue has been defined. Default = false.
  final pulumi.Input<bool>? strictMinEnabled;

  /// Creates a new [DatascanDataQualitySpecRuleRangeExpectation].
  /// [maxValue] The maximum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  /// [minValue] The minimum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  /// [strictMaxEnabled] Whether each value needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.
  /// [strictMinEnabled] Whether each value needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.
  DatascanDataQualitySpecRuleRangeExpectation({
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

  factory DatascanDataQualitySpecRuleRangeExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataQualitySpecRuleRangeExpectation(
      maxValue: (() {
        final guardedValue = map['maxValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minValue: (() {
        final guardedValue = map['minValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      strictMaxEnabled: (() {
        final guardedValue = map['strictMaxEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      strictMinEnabled: (() {
        final guardedValue = map['strictMinEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
