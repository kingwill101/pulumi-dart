// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_rule_statistic_range_expectation_statistic.dart';

/// Evaluates whether the column aggregate statistic lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation {
  /// Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final pulumi.Input<String>? maxValue;

  /// Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final pulumi.Input<String>? minValue;

  /// Optional. The aggregate metric to evaluate.
  final pulumi.Input<
    GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic
  >?
  statistic;

  /// Optional. Whether column statistic needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final pulumi.Input<bool>? strictMaxEnabled;

  /// Optional. Whether column statistic needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final pulumi.Input<bool>? strictMinEnabled;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation].
  /// [maxValue] Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [minValue] Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [statistic] Optional. The aggregate metric to evaluate.
  /// [strictMaxEnabled] Optional. Whether column statistic needs to be strictly lesser than ('&lt;') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  /// [strictMinEnabled] Optional. Whether column statistic needs to be strictly greater than ('&gt;') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation({
    this.maxValue,
    this.minValue,
    this.statistic,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'statistic':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic,
            String
          >(statistic, (value) => value.wireValue),
      'strictMaxEnabled': ?strictMaxEnabled,
      'strictMinEnabled': ?strictMinEnabled,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation(
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
      statistic: (() {
        final guardedValue = map['statistic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic.fromValue(
            guardedValue as String,
          ),
        );
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
