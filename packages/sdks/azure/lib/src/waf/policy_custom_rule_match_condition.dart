// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_custom_rule_match_condition_match_variable.dart';

class PolicyCustomRuleMatchCondition {
  /// A list of match values. This is **Required** when the `operator` is not `Any`.
  final pulumi.Input<List<String>>? matchValues;
  /// One or more `matchVariables` blocks as defined below.
  final pulumi.Input<List<PolicyCustomRuleMatchConditionMatchVariable>> matchVariables;
  /// Describes if this is negate condition or not
  final pulumi.Input<bool>? negationCondition;
  /// Describes operator to be matched. Possible values are `Any`, `IPMatch`, `GeoMatch`, `Equal`, `Contains`, `LessThan`, `GreaterThan`, `LessThanOrEqual`, `GreaterThanOrEqual`, `BeginsWith`, `EndsWith` and `Regex`.
  final pulumi.Input<String> operator;
  /// A list of transformations to do before the match is attempted. Possible values are `HtmlEntityDecode`, `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` and `UrlEncode`.
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [PolicyCustomRuleMatchCondition].
  /// [matchValues] A list of match values. This is **Required** when the `operator` is not `Any`.
  /// [matchVariables] One or more `matchVariables` blocks as defined below.
  /// [negationCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched. Possible values are `Any`, `IPMatch`, `GeoMatch`, `Equal`, `Contains`, `LessThan`, `GreaterThan`, `LessThanOrEqual`, `GreaterThanOrEqual`, `BeginsWith`, `EndsWith` and `Regex`.
  /// [transforms] A list of transformations to do before the match is attempted. Possible values are `HtmlEntityDecode`, `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` and `UrlEncode`.
  const PolicyCustomRuleMatchCondition({
    this.matchValues,
    required this.matchVariables,
    this.negationCondition,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'matchVariables': pulumi.Input.mapInputValue<List<PolicyCustomRuleMatchConditionMatchVariable>, List<Map<String, dynamic>>>(matchVariables, (value) => pulumi.Input.encodeList<PolicyCustomRuleMatchConditionMatchVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'negationCondition': ?negationCondition,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory PolicyCustomRuleMatchCondition.fromMap(Map<String, dynamic> map) {
    return PolicyCustomRuleMatchCondition(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchVariables: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyCustomRuleMatchConditionMatchVariable>(map['matchVariables']!, (value) => PolicyCustomRuleMatchConditionMatchVariable.fromMap((value as Map).cast<String, dynamic>()))),
      negationCondition: (() { final guardedValue = map['negationCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
