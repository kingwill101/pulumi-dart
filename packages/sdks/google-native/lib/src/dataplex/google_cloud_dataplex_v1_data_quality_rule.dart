// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_rule_range_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_regex_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_row_condition_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_set_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_statistic_range_expectation.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_table_condition_expectation.dart';

/// A rule captures data quality intent about a data source.
class GoogleCloudDataplexV1DataQualityRule {
  /// Optional. The unnested column which this rule is evaluated against.
  final pulumi.Input<String>? column;
  /// Optional. Description of the rule. The maximum length is 1,024 characters.
  final pulumi.Input<String>? description;
  /// The dimension a rule belongs to. Results are also aggregated at the dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  final pulumi.Input<String> dimension;
  /// Optional. Rows with null values will automatically fail a rule, unless ignore_null is true. In that case, such null rows are trivially considered passing.This field is only valid for row-level type rules.
  final pulumi.Input<bool>? ignoreNull;
  /// Optional. A mutable name for the rule. The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters. Must start with a letter. Must end with a number or a letter.
  final pulumi.Input<String>? name;
  /// Row-level rule which evaluates whether each column value is null.
  final pulumi.Input<Map<String, dynamic>>? nonNullExpectation;
  /// Row-level rule which evaluates whether each column value lies between a specified range.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleRangeExpectation>? rangeExpectation;
  /// Row-level rule which evaluates whether each column value matches a specified regex.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleRegexExpectation>? regexExpectation;
  /// Row-level rule which evaluates whether each row in a table passes the specified condition.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation>? rowConditionExpectation;
  /// Row-level rule which evaluates whether each column value is contained by a specified set.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleSetExpectation>? setExpectation;
  /// Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation>? statisticRangeExpectation;
  /// Aggregate rule which evaluates whether the provided expression is true for a table.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation>? tableConditionExpectation;
  /// Optional. The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field is only valid for row-level type rules.
  final pulumi.Input<double>? threshold;
  /// Row-level rule which evaluates whether each column value is unique.
  final pulumi.Input<Map<String, dynamic>>? uniquenessExpectation;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRule].
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
  GoogleCloudDataplexV1DataQualityRule({
    this.column,
    this.description,
    required this.dimension,
    this.ignoreNull,
    this.name,
    this.nonNullExpectation,
    this.rangeExpectation,
    this.regexExpectation,
    this.rowConditionExpectation,
    this.setExpectation,
    this.statisticRangeExpectation,
    this.tableConditionExpectation,
    this.threshold,
    this.uniquenessExpectation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'description': ?description,
      'dimension': dimension,
      'ignoreNull': ?ignoreNull,
      'name': ?name,
      'nonNullExpectation': ?nonNullExpectation,
      'rangeExpectation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualityRuleRangeExpectation, Map<String, dynamic>>(rangeExpectation, (value) => value.toMap()),
      'regexExpectation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualityRuleRegexExpectation, Map<String, dynamic>>(regexExpectation, (value) => value.toMap()),
      'rowConditionExpectation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation, Map<String, dynamic>>(rowConditionExpectation, (value) => value.toMap()),
      'setExpectation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualityRuleSetExpectation, Map<String, dynamic>>(setExpectation, (value) => value.toMap()),
      'statisticRangeExpectation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation, Map<String, dynamic>>(statisticRangeExpectation, (value) => value.toMap()),
      'tableConditionExpectation': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation, Map<String, dynamic>>(tableConditionExpectation, (value) => value.toMap()),
      'threshold': ?threshold,
      'uniquenessExpectation': ?uniquenessExpectation,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRule(
      column: map['column'] == null ? null : (map['column']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dimension: (map['dimension'] as String).input(),
      ignoreNull: map['ignoreNull'] == null ? null : (map['ignoreNull']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nonNullExpectation: map['nonNullExpectation'] == null ? null : ((map['nonNullExpectation']! as Map).cast<String, dynamic>()).input(),
      rangeExpectation: map['rangeExpectation'] == null ? null : (GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromMap((map['rangeExpectation']! as Map).cast<String, dynamic>())).input(),
      regexExpectation: map['regexExpectation'] == null ? null : (GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromMap((map['regexExpectation']! as Map).cast<String, dynamic>())).input(),
      rowConditionExpectation: map['rowConditionExpectation'] == null ? null : (GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation.fromMap((map['rowConditionExpectation']! as Map).cast<String, dynamic>())).input(),
      setExpectation: map['setExpectation'] == null ? null : (GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromMap((map['setExpectation']! as Map).cast<String, dynamic>())).input(),
      statisticRangeExpectation: map['statisticRangeExpectation'] == null ? null : (GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation.fromMap((map['statisticRangeExpectation']! as Map).cast<String, dynamic>())).input(),
      tableConditionExpectation: map['tableConditionExpectation'] == null ? null : (GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation.fromMap((map['tableConditionExpectation']! as Map).cast<String, dynamic>())).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as double).input(),
      uniquenessExpectation: map['uniquenessExpectation'] == null ? null : ((map['uniquenessExpectation']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

