// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_rule_condition_info_type_condition.dart';

class PreventionContentPolicyRuleCondition {
  /// A condition based on info types.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyRuleConditionInfoTypeCondition?>? infoTypeCondition;

  /// Creates a new [PreventionContentPolicyRuleCondition].
  /// [infoTypeCondition] A condition based on info types.
  const PreventionContentPolicyRuleCondition({
    this.infoTypeCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypeCondition': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyRuleConditionInfoTypeCondition, Map<String, dynamic>>(infoTypeCondition, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyRuleCondition.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyRuleCondition(
      infoTypeCondition: (() { final guardedValue = map['infoTypeCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyRuleConditionInfoTypeCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
