// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_triggering_rule_response.dart';

/// A rule set which evaluates all its rules upon an event interception. Only when all the included rules in the rule set will be evaluated as 'true', will the event trigger the defined actions.
class AutomationRuleSetResponse {
  final pulumi.Input<List<AutomationTriggeringRuleResponse>>? rules;

  /// Creates a new [AutomationRuleSetResponse].
  /// [rules] Optional.
  const AutomationRuleSetResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AutomationTriggeringRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AutomationTriggeringRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomationRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleSetResponse(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationTriggeringRuleResponse>(guardedValue, (value) => AutomationTriggeringRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
