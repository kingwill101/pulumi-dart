// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_quality_spec_rule_range_expectation.dart';
import 'datascan_data_quality_spec_rule_regex_expectation.dart';
import 'datascan_data_quality_spec_rule_row_condition_expectation.dart';
import 'datascan_data_quality_spec_rule_set_expectation.dart';
import 'datascan_data_quality_spec_rule_sql_assertion.dart';
import 'datascan_data_quality_spec_rule_statistic_range_expectation.dart';
import 'datascan_data_quality_spec_rule_table_condition_expectation.dart';

class DatascanDataQualitySpecRule {
  /// The unnested column which this rule is evaluated against.
  final pulumi.Input<String>? column;
  /// Description of the rule.
  /// The maximum length is 1,024 characters.
  final pulumi.Input<String>? description;
  /// The dimension name a rule belongs to. Custom dimension name is supported with all uppercase letters and maximum length of 30 characters.
  final pulumi.Input<String> dimension;
  /// Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing. Only applicable to ColumnMap rules.
  final pulumi.Input<bool>? ignoreNull;
  /// A mutable name for the rule.
  /// The name must contain only letters (a-z, A-Z), numbers (0-9), or hyphens (-).
  /// The maximum length is 63 characters.
  /// Must start with a letter.
  /// Must end with a number or a letter.
  final pulumi.Input<String>? name;
  /// ColumnMap rule which evaluates whether each column value is null.
  final pulumi.Input<Map<String, dynamic>>? nonNullExpectation;
  /// ColumnMap rule which evaluates whether each column value lies between a specified range.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleRangeExpectation>? rangeExpectation;
  /// ColumnMap rule which evaluates whether each column value matches a specified regex.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleRegexExpectation>? regexExpectation;
  /// Table rule which evaluates whether each row passes the specified condition.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleRowConditionExpectation>? rowConditionExpectation;
  /// ColumnMap rule which evaluates whether each column value is contained by a specified set.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleSetExpectation>? setExpectation;
  /// Table rule which evaluates whether any row matches invalid state.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleSqlAssertion>? sqlAssertion;
  /// ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleStatisticRangeExpectation>? statisticRangeExpectation;
  /// Whether the Rule is active or suspended. Default = false.
  final pulumi.Input<bool>? suspended;
  /// Table rule which evaluates whether the provided expression is true.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleTableConditionExpectation>? tableConditionExpectation;
  /// The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0).
  final pulumi.Input<double>? threshold;
  /// Row-level rule which evaluates whether each column value is unique.
  final pulumi.Input<Map<String, dynamic>>? uniquenessExpectation;

  /// Creates a new [DatascanDataQualitySpecRule].
  /// [column] The unnested column which this rule is evaluated against.
  /// [description] Description of the rule.
  /// [dimension] The dimension name a rule belongs to. Custom dimension name is supported with all uppercase letters and maximum length of 30 characters.
  /// [ignoreNull] Rows with null values will automatically fail a rule, unless ignoreNull is true. In that case, such null rows are trivially considered passing. Only applicable to ColumnMap rules.
  /// [name] A mutable name for the rule.
  /// [nonNullExpectation] ColumnMap rule which evaluates whether each column value is null.
  /// [rangeExpectation] ColumnMap rule which evaluates whether each column value lies between a specified range.
  /// [regexExpectation] ColumnMap rule which evaluates whether each column value matches a specified regex.
  /// [rowConditionExpectation] Table rule which evaluates whether each row passes the specified condition.
  /// [setExpectation] ColumnMap rule which evaluates whether each column value is contained by a specified set.
  /// [sqlAssertion] Table rule which evaluates whether any row matches invalid state.
  /// [statisticRangeExpectation] ColumnAggregate rule which evaluates whether the column aggregate statistic lies between a specified range.
  /// [suspended] Whether the Rule is active or suspended. Default = false.
  /// [tableConditionExpectation] Table rule which evaluates whether the provided expression is true.
  /// [threshold] The minimum ratio of passing_rows / total_rows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0).
  /// [uniquenessExpectation] Row-level rule which evaluates whether each column value is unique.
  DatascanDataQualitySpecRule({
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
    this.sqlAssertion,
    this.statisticRangeExpectation,
    this.suspended,
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
      'rangeExpectation': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleRangeExpectation, Map<String, dynamic>>(rangeExpectation, (value) => value.toMap()),
      'regexExpectation': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleRegexExpectation, Map<String, dynamic>>(regexExpectation, (value) => value.toMap()),
      'rowConditionExpectation': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleRowConditionExpectation, Map<String, dynamic>>(rowConditionExpectation, (value) => value.toMap()),
      'setExpectation': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleSetExpectation, Map<String, dynamic>>(setExpectation, (value) => value.toMap()),
      'sqlAssertion': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleSqlAssertion, Map<String, dynamic>>(sqlAssertion, (value) => value.toMap()),
      'statisticRangeExpectation': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleStatisticRangeExpectation, Map<String, dynamic>>(statisticRangeExpectation, (value) => value.toMap()),
      'suspended': ?suspended,
      'tableConditionExpectation': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleTableConditionExpectation, Map<String, dynamic>>(tableConditionExpectation, (value) => value.toMap()),
      'threshold': ?threshold,
      'uniquenessExpectation': ?uniquenessExpectation,
    };
  }

  factory DatascanDataQualitySpecRule.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRule(
      column: map['column'] == null ? null : (map['column']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dimension: (map['dimension'] as String).input(),
      ignoreNull: map['ignoreNull'] == null ? null : (map['ignoreNull']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nonNullExpectation: map['nonNullExpectation'] == null ? null : ((map['nonNullExpectation']! as Map).cast<String, dynamic>()).input(),
      rangeExpectation: map['rangeExpectation'] == null ? null : (DatascanDataQualitySpecRuleRangeExpectation.fromMap((map['rangeExpectation']! as Map).cast<String, dynamic>())).input(),
      regexExpectation: map['regexExpectation'] == null ? null : (DatascanDataQualitySpecRuleRegexExpectation.fromMap((map['regexExpectation']! as Map).cast<String, dynamic>())).input(),
      rowConditionExpectation: map['rowConditionExpectation'] == null ? null : (DatascanDataQualitySpecRuleRowConditionExpectation.fromMap((map['rowConditionExpectation']! as Map).cast<String, dynamic>())).input(),
      setExpectation: map['setExpectation'] == null ? null : (DatascanDataQualitySpecRuleSetExpectation.fromMap((map['setExpectation']! as Map).cast<String, dynamic>())).input(),
      sqlAssertion: map['sqlAssertion'] == null ? null : (DatascanDataQualitySpecRuleSqlAssertion.fromMap((map['sqlAssertion']! as Map).cast<String, dynamic>())).input(),
      statisticRangeExpectation: map['statisticRangeExpectation'] == null ? null : (DatascanDataQualitySpecRuleStatisticRangeExpectation.fromMap((map['statisticRangeExpectation']! as Map).cast<String, dynamic>())).input(),
      suspended: map['suspended'] == null ? null : (map['suspended']! as bool).input(),
      tableConditionExpectation: map['tableConditionExpectation'] == null ? null : (DatascanDataQualitySpecRuleTableConditionExpectation.fromMap((map['tableConditionExpectation']! as Map).cast<String, dynamic>())).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as double).input(),
      uniquenessExpectation: map['uniquenessExpectation'] == null ? null : ((map['uniquenessExpectation']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

