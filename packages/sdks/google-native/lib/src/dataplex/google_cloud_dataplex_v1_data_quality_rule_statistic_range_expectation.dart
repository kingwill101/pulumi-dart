// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_quality_rule_statistic_range_expectation_statistic.dart';

/// Evaluates whether the column aggregate statistic lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation {
  /// Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final String? maxValue;
  /// Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final String? minValue;
  /// Optional. The aggregate metric to evaluate.
  final GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic? statistic;
  /// Optional. Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final bool? strictMaxEnabled;
  /// Optional. Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final bool? strictMinEnabled;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation].
  /// [maxValue] Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [minValue] Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [statistic] Optional. The aggregate metric to evaluate.
  /// [strictMaxEnabled] Optional. Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  /// [strictMinEnabled] Optional. Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
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
      'statistic': ?statistic == null ? null : statistic!.value,
      'strictMaxEnabled': ?strictMaxEnabled,
      'strictMinEnabled': ?strictMinEnabled,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation(
      maxValue: map['maxValue'] == null ? null : map['maxValue'] as String,
      minValue: map['minValue'] == null ? null : map['minValue'] as String,
      statistic: map['statistic'] == null ? null : GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic.fromValue(map['statistic'] as String),
      strictMaxEnabled: map['strictMaxEnabled'] == null ? null : map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] == null ? null : map['strictMinEnabled'] as bool,
    );
  }
}

