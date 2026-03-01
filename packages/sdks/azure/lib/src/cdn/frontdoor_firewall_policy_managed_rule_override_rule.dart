// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_managed_rule_override_rule_exclusion.dart';

class FrontdoorFirewallPolicyManagedRuleOverrideRule {
  /// The action to be applied when the managed rule matches or when the anomaly score is 5 or greater. Possible values are `Allow`, `CAPTCHA`, `Log`, `Block`, `Redirect`, `AnomalyScoring` and `JSChallenge`.
  ///
  /// > **Note:** Possible values for `DefaultRuleSet 1.1` and below are `Allow`, `Log`, `Block`, or `Redirect`.
  ///
  /// > **Note:** Possible values for `DefaultRuleSet 2.0` and above are `Log` or `AnomalyScoring`.
  ///
  /// > **Note:** Possible values for `Microsoft_BotManagerRuleSet` are `Allow`, `Log`, `Block`, `Redirect`, or `JSChallenge`.
  ///
  /// > **Note:** Please see the `DefaultRuleSet` [product documentation](https://learn.microsoft.com/azure/web-application-firewall/afds/waf-front-door-drs?tabs=drs20#anomaly-scoring-mode) or the `Microsoft_BotManagerRuleSet` [product documentation](https://learn.microsoft.com/azure/web-application-firewall/afds/afds-overview) for more information.
  ///
  /// !> **Note:** Setting the `action` field to `JSChallenge` is currently in **PREVIEW**. Please see the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.
  final String action;
  /// Is the managed rule override enabled or disabled. Defaults to `false`
  final bool? enabled;
  /// One or more `exclusion` blocks as defined below.
  final List<FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusion>? exclusions;
  /// Identifier for the managed rule.
  final String ruleId;

  /// Creates a new [FrontdoorFirewallPolicyManagedRuleOverrideRule].
  /// [action] The action to be applied when the managed rule matches or when the anomaly score is 5 or greater. Possible values are `Allow`, `CAPTCHA`, `Log`, `Block`, `Redirect`, `AnomalyScoring` and `JSChallenge`.
  /// [enabled] Is the managed rule override enabled or disabled. Defaults to `false`
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [ruleId] Identifier for the managed rule.
  FrontdoorFirewallPolicyManagedRuleOverrideRule({
    required this.action,
    this.enabled,
    this.exclusions,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabled': ?enabled,
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusion, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'ruleId': ruleId,
    };
  }

  factory FrontdoorFirewallPolicyManagedRuleOverrideRule.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyManagedRuleOverrideRule(
      action: map['action'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusion>(map['exclusions'], (value) => FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusion.fromMap((value as Map).cast<String, dynamic>())),
      ruleId: map['ruleId'] as String,
    );
  }
}

