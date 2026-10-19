// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_custom_info_type_detection_rule_hotword_rule.dart';

class PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule {
  /// Hotword-based detection rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule?>? hotwordRule;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule].
  /// [hotwordRule] Hotword-based detection rule.
  const PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule({
    this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRule': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule, Map<String, dynamic>>(hotwordRule, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule(
      hotwordRule: (() { final guardedValue = map['hotwordRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
