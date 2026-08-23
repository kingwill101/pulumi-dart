// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_quality_spec_rule_range_expectation.dart';
import 'datascan_data_quality_spec_rule_regex_expectation.dart';
import 'datascan_data_quality_spec_rule_row_condition_expectation.dart';
import 'datascan_data_quality_spec_rule_set_expectation.dart';
import 'datascan_data_quality_spec_rule_sql_assertion.dart';
import 'datascan_data_quality_spec_rule_statistic_range_expectation.dart';
import 'datascan_data_quality_spec_rule_table_condition_expectation.dart';
import 'datascan_data_quality_spec_rule_template_reference.dart';

class DatascanDataQualitySpecRule {
  /// Map of attribute name and value linked to the rule.
  final pulumi.Input<Map<String, String>>? attributes;
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
  /// Aggregate rule which references a rule template and provides the parameters to be substituted in the template.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecRuleTemplateReference>? templateReference;
  /// The minimum ratio of passingRows / totalRows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0).
  final pulumi.Input<double>? threshold;
  /// Row-level rule which evaluates whether each column value is unique.
  final pulumi.Input<Map<String, dynamic>>? uniquenessExpectation;

  /// Creates a new [DatascanDataQualitySpecRule].
  /// [attributes] Map of attribute name and value linked to the rule.
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
  /// [templateReference] Aggregate rule which references a rule template and provides the parameters to be substituted in the template.
  /// [threshold] The minimum ratio of passingRows / totalRows required to pass this rule, with a range of [0.0, 1.0]. 0 indicates default value (i.e. 1.0).
  /// [uniquenessExpectation] Row-level rule which evaluates whether each column value is unique.
  const DatascanDataQualitySpecRule({
    this.attributes,
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
    this.templateReference,
    this.threshold,
    this.uniquenessExpectation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
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
      'templateReference': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecRuleTemplateReference, Map<String, dynamic>>(templateReference, (value) => value.toMap()),
      'threshold': ?threshold,
      'uniquenessExpectation': ?uniquenessExpectation,
    };
  }

  factory DatascanDataQualitySpecRule.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRule(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      column: (() { final guardedValue = map['column']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimension: pulumi.Input.fromValue(map['dimension'] as String),
      ignoreNull: (() { final guardedValue = map['ignoreNull']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonNullExpectation: (() { final guardedValue = map['nonNullExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      rangeExpectation: (() { final guardedValue = map['rangeExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleRangeExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexExpectation: (() { final guardedValue = map['regexExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleRegexExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rowConditionExpectation: (() { final guardedValue = map['rowConditionExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleRowConditionExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setExpectation: (() { final guardedValue = map['setExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleSetExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlAssertion: (() { final guardedValue = map['sqlAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleSqlAssertion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statisticRangeExpectation: (() { final guardedValue = map['statisticRangeExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleStatisticRangeExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tableConditionExpectation: (() { final guardedValue = map['tableConditionExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleTableConditionExpectation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateReference: (() { final guardedValue = map['templateReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecRuleTemplateReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      uniquenessExpectation: (() { final guardedValue = map['uniquenessExpectation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
