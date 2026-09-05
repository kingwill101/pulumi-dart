// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_log_scrubbing_scrubbing_rule.dart';

class FrontdoorFirewallPolicyLogScrubbing {
  /// Is log scrubbing enabled? Possible values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// One or more `scrubbingRule` blocks as defined below.
  ///
  /// &gt; **Note:** For more information on masking sensitive data in Azure Front Door please see the [product documentation](https://learn.microsoft.com/azure/web-application-firewall/afds/waf-sensitive-data-protection-configure-frontdoor).
  final pulumi.Input<List<FrontdoorFirewallPolicyLogScrubbingScrubbingRule>> scrubbingRules;

  /// Creates a new [FrontdoorFirewallPolicyLogScrubbing].
  /// [enabled] Is log scrubbing enabled? Possible values are `true` or `false`. Defaults to `true`.
  /// [scrubbingRules] One or more `scrubbingRule` blocks as defined below.
  const FrontdoorFirewallPolicyLogScrubbing({
    this.enabled,
    required this.scrubbingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'scrubbingRules': pulumi.Input.mapInputValue<List<FrontdoorFirewallPolicyLogScrubbingScrubbingRule>, List<Map<String, dynamic>>>(scrubbingRules, (value) => pulumi.Input.encodeList<FrontdoorFirewallPolicyLogScrubbingScrubbingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FrontdoorFirewallPolicyLogScrubbing.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyLogScrubbing(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scrubbingRules: pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorFirewallPolicyLogScrubbingScrubbingRule>(map['scrubbingRules']!, (value) => FrontdoorFirewallPolicyLogScrubbingScrubbingRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
