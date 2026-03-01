// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_source_rule_set_rule.dart';

class AutomationSourceRuleSet {
  /// One or more `rule` blocks as defined below.
  ///
  /// > **Note:** This automation will trigger when all of the `rule`s in this `rule_set` are evaluated as 'true'. This is equivalent to a logical 'AND'.
  final List<AutomationSourceRuleSetRule> rules;

  /// Creates a new [AutomationSourceRuleSet].
  /// [rules] One or more `rule` blocks as defined below.
  AutomationSourceRuleSet({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.encodeList<AutomationSourceRuleSetRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory AutomationSourceRuleSet.fromMap(Map<String, dynamic> map) {
    return AutomationSourceRuleSet(
      rules: pulumi.Input.decodeList<AutomationSourceRuleSetRule>(map['rules'], (value) => AutomationSourceRuleSetRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

