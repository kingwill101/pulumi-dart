// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_group_override_response.dart';

/// Defines a managed rule set.
class ManagedRuleSetResponse {
  /// Defines the rule group overrides to apply to the rule set.
  final pulumi.Input<List<ManagedRuleGroupOverrideResponse>>? ruleGroupOverrides;
  /// Defines the rule set type to use.
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set to use.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ManagedRuleSetResponse].
  /// [ruleGroupOverrides] Defines the rule group overrides to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ManagedRuleSetResponse({
    this.ruleGroupOverrides,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupOverrides': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleGroupOverrideResponse>, List<Map<String, dynamic>>>(ruleGroupOverrides, (value) => pulumi.Input.encodeList<ManagedRuleGroupOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetResponse(
      ruleGroupOverrides: map['ruleGroupOverrides'] == null ? null : (pulumi.Input.decodeList<ManagedRuleGroupOverrideResponse>(map['ruleGroupOverrides']!, (value) => ManagedRuleGroupOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleSetType: (map['ruleSetType'] as String).input(),
      ruleSetVersion: (map['ruleSetVersion'] as String).input(),
    );
  }
}

