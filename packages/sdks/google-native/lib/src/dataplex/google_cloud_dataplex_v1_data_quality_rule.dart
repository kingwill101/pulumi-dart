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
  const GoogleCloudDataplexV1DataQualityRule({
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
      column: (() { final guardedValue = map['column']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimension: pulumi.Input.fromValue(map['dimension'] as String),
      ignoreNull: (() { final guardedValue = map['ignoreNull']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonNullExpectation: (() { final guardedValue = map['nonNullExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      rangeExpectation: (() { final guardedValue = map['rangeExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexExpectation: (() { final guardedValue = map['regexExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rowConditionExpectation: (() { final guardedValue = map['rowConditionExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setExpectation: (() { final guardedValue = map['setExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statisticRangeExpectation: (() { final guardedValue = map['statisticRangeExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableConditionExpectation: (() { final guardedValue = map['tableConditionExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      uniquenessExpectation: (() { final guardedValue = map['uniquenessExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

