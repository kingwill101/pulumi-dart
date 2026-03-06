// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_rule_range_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_regex_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_row_condition_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_set_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_statistic_range_expectation_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_table_condition_expectation_response.dart';

/// A rule captures data quality intent about a data source.
class GoogleCloudDataplexV1DataQualityRuleResponse {
  /// Optional. The unnested column which this rule is evaluated against.
  final pulumi.Input<String> column;
  /// Optional. Description of the rule. The maximum length is 1,024 characters.
  final pulumi.Input<String> description;
  /// The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  final pulumi.Input<String> dimension;
  /// Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.This field is only valid for row-level type rules.
  final pulumi.Input<bool> ignoreNull;
  /// Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters. Must start with a letter. Must end with a number or a letter.
  final pulumi.Input<String> name;
  /// Row-level rule which evaluates whether each column value is null.
  final pulumi.Input<Map<String, dynamic>> nonNullExpectation;
  /// Row-level rule which evaluates whether each column value lies between a specified range.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse> rangeExpectation;
  /// Row-level rule which evaluates whether each column value matches a specified regex.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse> regexExpectation;
  /// Row-level rule which evaluates whether each row in a table passes the specified condition.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse> rowConditionExpectation;
  /// Row-level rule which evaluates whether each column value is contained by a specified set.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse> setExpectation;
  /// Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse> statisticRangeExpectation;
  /// Aggregate rule which evaluates whether the provided expression is true for a table.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse> tableConditionExpectation;
  /// Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field is only valid for row-level type rules.
  final pulumi.Input<double> threshold;
  /// Row-level rule which evaluates whether each column value is unique.
  final pulumi.Input<Map<String, dynamic>> uniquenessExpectation;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleResponse].
  /// [column] Optional. The unnested column which this rule is evaluated against.
  /// [description] Optional. Description of the rule. The maximum length is 1,024 characters.
  /// [dimension] The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  /// [ignoreNull] Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.This field is only valid for row-level type rules.
  /// [name] Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters. Must start with a letter. Must end with a number or a letter.
  /// [nonNullExpectation] Row-level rule which evaluates whether each column value is null.
  /// [rangeExpectation] Row-level rule which evaluates whether each column value lies between a specified range.
  /// [regexExpectation] Row-level rule which evaluates whether each column value matches a specified regex.
  /// [rowConditionExpectation] Row-level rule which evaluates whether each row in a table passes the specified condition.
  /// [setExpectation] Row-level rule which evaluates whether each column value is contained by a specified set.
  /// [statisticRangeExpectation] Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// [tableConditionExpectation] Aggregate rule which evaluates whether the provided expression is true for a table.
  /// [threshold] Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field is only valid for row-level type rules.
  /// [uniquenessExpectation] Row-level rule which evaluates whether each column value is unique.
  const GoogleCloudDataplexV1DataQualityRuleResponse({
    required this.column,
    required this.description,
    required this.dimension,
    required this.ignoreNull,
    required this.name,
    required this.nonNullExpectation,
    required this.rangeExpectation,
    required this.regexExpectation,
    required this.rowConditionExpectation,
    required this.setExpectation,
    required this.statisticRangeExpectation,
    required this.tableConditionExpectation,
    required this.threshold,
    required this.uniquenessExpectation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'description': description,
      'dimension': dimension,
      'ignoreNull': ignoreNull,
      'name': name,
      'nonNullExpectation': nonNullExpectation,
      'rangeExpectation': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse, Map<String, dynamic>>(rangeExpectation, (value) => value.toMap()),
      'regexExpectation': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse, Map<String, dynamic>>(regexExpectation, (value) => value.toMap()),
      'rowConditionExpectation': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse, Map<String, dynamic>>(rowConditionExpectation, (value) => value.toMap()),
      'setExpectation': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse, Map<String, dynamic>>(setExpectation, (value) => value.toMap()),
      'statisticRangeExpectation': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse, Map<String, dynamic>>(statisticRangeExpectation, (value) => value.toMap()),
      'tableConditionExpectation': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse, Map<String, dynamic>>(tableConditionExpectation, (value) => value.toMap()),
      'threshold': threshold,
      'uniquenessExpectation': uniquenessExpectation,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleResponse(
      column: pulumi.Input.fromValue(map['column'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      dimension: pulumi.Input.fromValue(map['dimension'] as String),
      ignoreNull: pulumi.Input.fromValue(map['ignoreNull'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      nonNullExpectation: pulumi.Input.fromValue((map['nonNullExpectation']! as Map).cast<String, dynamic>()),
      rangeExpectation: pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse.fromMap((map['rangeExpectation']! as Map).cast<String, dynamic>())),
      regexExpectation: pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse.fromMap((map['regexExpectation']! as Map).cast<String, dynamic>())),
      rowConditionExpectation: pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse.fromMap((map['rowConditionExpectation']! as Map).cast<String, dynamic>())),
      setExpectation: pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse.fromMap((map['setExpectation']! as Map).cast<String, dynamic>())),
      statisticRangeExpectation: pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse.fromMap((map['statisticRangeExpectation']! as Map).cast<String, dynamic>())),
      tableConditionExpectation: pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse.fromMap((map['tableConditionExpectation']! as Map).cast<String, dynamic>())),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      uniquenessExpectation: pulumi.Input.fromValue((map['uniquenessExpectation']! as Map).cast<String, dynamic>()),
    );
  }
}

