// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_log_scrubbing_scrubbing_rule.dart';

class FrontdoorFirewallPolicyLogScrubbing {
  /// Is log scrubbing enabled? Possible values are `true` or `false`. Defaults to `true`.
  final bool? enabled;
  /// One or more `scrubbing_rule` blocks as defined below.
  ///
  /// > **Note:** For more information on masking sensitive data in Azure Front Door please see the [product documentation](https://learn.microsoft.com/azure/web-application-firewall/afds/waf-sensitive-data-protection-configure-frontdoor).
  final List<FrontdoorFirewallPolicyLogScrubbingScrubbingRule> scrubbingRules;

  /// Creates a new [FrontdoorFirewallPolicyLogScrubbing].
  /// [enabled] Is log scrubbing enabled? Possible values are `true` or `false`. Defaults to `true`.
  /// [scrubbingRules] One or more `scrubbing_rule` blocks as defined below.
  FrontdoorFirewallPolicyLogScrubbing({
    this.enabled,
    required this.scrubbingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'scrubbingRules': pulumi.Input.encodeList<FrontdoorFirewallPolicyLogScrubbingScrubbingRule, Map<String, dynamic>>(scrubbingRules, (value) => value.toMap()),
    };
  }

  factory FrontdoorFirewallPolicyLogScrubbing.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyLogScrubbing(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      scrubbingRules: pulumi.Input.decodeList<FrontdoorFirewallPolicyLogScrubbingScrubbingRule>(map['scrubbingRules'], (value) => FrontdoorFirewallPolicyLogScrubbingScrubbingRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

