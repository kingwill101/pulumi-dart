// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_quality_rule_response.dart';

/// DataQualityRuleResult provides a more detailed, per-rule view of the results.
class GoogleCloudDataplexV1DataQualityRuleResultResponse {
  /// The number of rows a rule was evaluated against.This field is only valid for row-level type rules.Evaluated count can be configured to either include all rows (default) - with null rows automatically failing rule evaluation, or exclude null rows from the evaluated_count, by setting ignore_nulls = true.
  final String evaluatedCount;
  /// The query to find rows that did not pass this rule.This field is only valid for row-level type rules.
  final String failingRowsQuery;
  /// The number of rows with null values in the specified column.
  final String nullCount;
  /// The ratio of passed_count / evaluated_count.This field is only valid for row-level type rules.
  final double passRatio;
  /// Whether the rule passed or failed.
  final bool passed;
  /// The number of rows which passed a rule evaluation.This field is only valid for row-level type rules.
  final String passedCount;
  /// The rule specified in the DataQualitySpec, as is.
  final GoogleCloudDataplexV1DataQualityRuleResponse rule;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleResultResponse].
  /// [evaluatedCount] The number of rows a rule was evaluated against.This field is only valid for row-level type rules.Evaluated count can be configured to either include all rows (default) - with null rows automatically failing rule evaluation, or exclude null rows from the evaluated_count, by setting ignore_nulls = true.
  /// [failingRowsQuery] The query to find rows that did not pass this rule.This field is only valid for row-level type rules.
  /// [nullCount] The number of rows with null values in the specified column.
  /// [passRatio] The ratio of passed_count / evaluated_count.This field is only valid for row-level type rules.
  /// [passed] Whether the rule passed or failed.
  /// [passedCount] The number of rows which passed a rule evaluation.This field is only valid for row-level type rules.
  /// [rule] The rule specified in the DataQualitySpec, as is.
  GoogleCloudDataplexV1DataQualityRuleResultResponse({
    required this.evaluatedCount,
    required this.failingRowsQuery,
    required this.nullCount,
    required this.passRatio,
    required this.passed,
    required this.passedCount,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluatedCount': evaluatedCount,
      'failingRowsQuery': failingRowsQuery,
      'nullCount': nullCount,
      'passRatio': passRatio,
      'passed': passed,
      'passedCount': passedCount,
      'rule': rule.toMap(),
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleResultResponse(
      evaluatedCount: map['evaluatedCount'] as String,
      failingRowsQuery: map['failingRowsQuery'] as String,
      nullCount: map['nullCount'] as String,
      passRatio: map['passRatio'] as double,
      passed: map['passed'] as bool,
      passedCount: map['passedCount'] as String,
      rule: GoogleCloudDataplexV1DataQualityRuleResponse.fromMap((map['rule'] as Map).cast<String, dynamic>()),
    );
  }
}

