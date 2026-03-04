// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_quality_rules_rule_range_expectation.dart';
import 'get_data_quality_rules_rule_regex_expectation.dart';
import 'get_data_quality_rules_rule_row_condition_expectation.dart';
import 'get_data_quality_rules_rule_set_expectation.dart';
import 'get_data_quality_rules_rule_sql_assertion.dart';
import 'get_data_quality_rules_rule_statistic_range_expectation.dart';
import 'get_data_quality_rules_rule_table_condition_expectation.dart';

class GetDataQualityRulesRule {
  /// The unnested column which this rule is evaluated against.
  final pulumi.Input<String> column;

  /// Description of the rule. (The maximum length is 1,024 characters.)
  final pulumi.Input<String> description;

  /// The dimension a rule belongs to. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "FRESHNESS", "VOLUME"
  final pulumi.Input<String> dimension;

  /// Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing.
  /// This field is only valid for the following type of rules: RangeExpectation, RegexExpectation, SetExpectation, UniquenessExpectation
  final pulumi.Input<bool> ignoreNull;

  /// A mutable name for the rule.
  /// The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-).
  /// The maximum length is 63 characters.
  /// Must start with a letter.
  /// Must end with a number or a letter.
  final pulumi.Input<String> name;

  /// Row-level rule which evaluates whether each column value is null.
  final pulumi.Input<List<Map<String, dynamic>>> nonNullExpectations;

  /// Row-level rule which evaluates whether each column value lies between a specified range.
  final pulumi.Input<List<GetDataQualityRulesRuleRangeExpectation>>
  rangeExpectations;

  /// Row-level rule which evaluates whether each column value matches a specified regex.
  final pulumi.Input<List<GetDataQualityRulesRuleRegexExpectation>>
  regexExpectations;

  /// Row-level rule which evaluates whether each row in a table passes the specified condition.
  final pulumi.Input<List<GetDataQualityRulesRuleRowConditionExpectation>>
  rowConditionExpectations;

  /// Row-level rule which evaluates whether each column value is contained by a specified set.
  final pulumi.Input<List<GetDataQualityRulesRuleSetExpectation>>
  setExpectations;

  /// Aggregate rule which evaluates the number of rows returned for the provided statement. If any rows are returned, this rule fails.
  final pulumi.Input<List<GetDataQualityRulesRuleSqlAssertion>> sqlAssertions;

  /// Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  final pulumi.Input<List<GetDataQualityRulesRuleStatisticRangeExpectation>>
  statisticRangeExpectations;

  /// Whether the Rule is active or suspended. Default is false.
  final pulumi.Input<bool> suspended;

  /// Aggregate rule which evaluates whether the provided expression is true for a table.
  final pulumi.Input<List<GetDataQualityRulesRuleTableConditionExpectation>>
  tableConditionExpectations;

  /// The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0). This field is only valid for row-level type rules.
  final pulumi.Input<double> threshold;

  /// Row-level rule which evaluates whether each column value is unique.
  final pulumi.Input<List<Map<String, dynamic>>> uniquenessExpectations;

  /// Creates a new [GetDataQualityRulesRule].
  /// [column] The unnested column which this rule is evaluated against.
  /// [description] Description of the rule. (The maximum length is 1,024 characters.)
  /// [dimension] The dimension a rule belongs to. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "FRESHNESS", "VOLUME"
  /// [ignoreNull] Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing.
  /// [name] A mutable name for the rule.
  /// [nonNullExpectations] Row-level rule which evaluates whether each column value is null.
  /// [rangeExpectations] Row-level rule which evaluates whether each column value lies between a specified range.
  /// [regexExpectations] Row-level rule which evaluates whether each column value matches a specified regex.
  /// [rowConditionExpectations] Row-level rule which evaluates whether each row in a table passes the specified condition.
  /// [setExpectations] Row-level rule which evaluates whether each column value is contained by a specified set.
  /// [sqlAssertions] Aggregate rule which evaluates the number of rows returned for the provided statement. If any rows are returned, this rule fails.
  /// [statisticRangeExpectations] Aggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// [suspended] Whether the Rule is active or suspended. Default is false.
  /// [tableConditionExpectations] Aggregate rule which evaluates whether the provided expression is true for a table.
  /// [threshold] The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0). This field is only valid for row-level type rules.
  /// [uniquenessExpectations] Row-level rule which evaluates whether each column value is unique.
  GetDataQualityRulesRule({
    required this.column,
    required this.description,
    required this.dimension,
    required this.ignoreNull,
    required this.name,
    required this.nonNullExpectations,
    required this.rangeExpectations,
    required this.regexExpectations,
    required this.rowConditionExpectations,
    required this.setExpectations,
    required this.sqlAssertions,
    required this.statisticRangeExpectations,
    required this.suspended,
    required this.tableConditionExpectations,
    required this.threshold,
    required this.uniquenessExpectations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'description': description,
      'dimension': dimension,
      'ignoreNull': ignoreNull,
      'name': name,
      'nonNullExpectations': nonNullExpectations,
      'rangeExpectations':
          pulumi.Input.mapInputValue<
            List<GetDataQualityRulesRuleRangeExpectation>,
            List<Map<String, dynamic>>
          >(
            rangeExpectations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataQualityRulesRuleRangeExpectation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regexExpectations':
          pulumi.Input.mapInputValue<
            List<GetDataQualityRulesRuleRegexExpectation>,
            List<Map<String, dynamic>>
          >(
            regexExpectations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataQualityRulesRuleRegexExpectation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'rowConditionExpectations':
          pulumi.Input.mapInputValue<
            List<GetDataQualityRulesRuleRowConditionExpectation>,
            List<Map<String, dynamic>>
          >(
            rowConditionExpectations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataQualityRulesRuleRowConditionExpectation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'setExpectations':
          pulumi.Input.mapInputValue<
            List<GetDataQualityRulesRuleSetExpectation>,
            List<Map<String, dynamic>>
          >(
            setExpectations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataQualityRulesRuleSetExpectation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sqlAssertions':
          pulumi.Input.mapInputValue<
            List<GetDataQualityRulesRuleSqlAssertion>,
            List<Map<String, dynamic>>
          >(
            sqlAssertions,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataQualityRulesRuleSqlAssertion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statisticRangeExpectations':
          pulumi.Input.mapInputValue<
            List<GetDataQualityRulesRuleStatisticRangeExpectation>,
            List<Map<String, dynamic>>
          >(
            statisticRangeExpectations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataQualityRulesRuleStatisticRangeExpectation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'suspended': suspended,
      'tableConditionExpectations':
          pulumi.Input.mapInputValue<
            List<GetDataQualityRulesRuleTableConditionExpectation>,
            List<Map<String, dynamic>>
          >(
            tableConditionExpectations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataQualityRulesRuleTableConditionExpectation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threshold': threshold,
      'uniquenessExpectations': uniquenessExpectations,
    };
  }

  factory GetDataQualityRulesRule.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRule(
      column: pulumi.Input.fromValue(map['column'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      dimension: pulumi.Input.fromValue(map['dimension'] as String),
      ignoreNull: pulumi.Input.fromValue(map['ignoreNull'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      nonNullExpectations: pulumi.Input.fromValue(
        (map['nonNullExpectations'] as List).cast<Map<String, dynamic>>(),
      ),
      rangeExpectations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDataQualityRulesRuleRangeExpectation>(
          map['rangeExpectations']!,
          (value) => GetDataQualityRulesRuleRangeExpectation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      regexExpectations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDataQualityRulesRuleRegexExpectation>(
          map['regexExpectations']!,
          (value) => GetDataQualityRulesRuleRegexExpectation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      rowConditionExpectations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDataQualityRulesRuleRowConditionExpectation>(
          map['rowConditionExpectations']!,
          (value) => GetDataQualityRulesRuleRowConditionExpectation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      setExpectations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDataQualityRulesRuleSetExpectation>(
          map['setExpectations']!,
          (value) => GetDataQualityRulesRuleSetExpectation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sqlAssertions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDataQualityRulesRuleSqlAssertion>(
          map['sqlAssertions']!,
          (value) => GetDataQualityRulesRuleSqlAssertion.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      statisticRangeExpectations: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetDataQualityRulesRuleStatisticRangeExpectation>(
          map['statisticRangeExpectations']!,
          (value) => GetDataQualityRulesRuleStatisticRangeExpectation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      suspended: pulumi.Input.fromValue(map['suspended'] as bool),
      tableConditionExpectations: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetDataQualityRulesRuleTableConditionExpectation>(
          map['tableConditionExpectations']!,
          (value) => GetDataQualityRulesRuleTableConditionExpectation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      uniquenessExpectations: pulumi.Input.fromValue(
        (map['uniquenessExpectations'] as List).cast<Map<String, dynamic>>(),
      ),
    );
  }
}
