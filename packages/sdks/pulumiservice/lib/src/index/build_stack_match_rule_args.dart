// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_match_rule.dart';

/// {@template pulumi_index_build_stack_match_rule_args_doc}
/// Arguments for buildStackMatchRule.
/// {@endtemplate}
/// {@macro pulumi_index_build_stack_match_rule_args_doc}
class BuildStackMatchRuleArgs {
  /// The rules. An entity matches if it matches any rule.
  final pulumi.Input<List<PolicyGroupMatchRule>> rules;

  /// Creates a new [BuildStackMatchRuleArgs].
  /// [rules] The rules. An entity matches if it matches any rule.
  const BuildStackMatchRuleArgs({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<PolicyGroupMatchRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyGroupMatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BuildStackMatchRuleArgs.fromMap(Map<String, dynamic> map) {
    return BuildStackMatchRuleArgs(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyGroupMatchRule>(map['rules']!, (value) => PolicyGroupMatchRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
