// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_triggering_rule.dart';

/// A rule set which evaluates all its rules upon an event interception. Only when all the included rules in the rule set will be evaluated as 'true', will the event trigger the defined actions.
class AutomationRuleSet {
  final pulumi.Input<List<AutomationTriggeringRule>>? rules;

  /// Creates a new [AutomationRuleSet].
  /// [rules] Optional.
  AutomationRuleSet({this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutomationTriggeringRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  AutomationTriggeringRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AutomationRuleSet.fromMap(Map<String, dynamic> map) {
    return AutomationRuleSet(
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AutomationTriggeringRule>(
            guardedValue,
            (value) => AutomationTriggeringRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
