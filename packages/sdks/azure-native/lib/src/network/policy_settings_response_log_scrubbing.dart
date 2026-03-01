// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_application_firewall_scrubbing_rules_response.dart';

/// To scrub sensitive log fields
class PolicySettingsResponseLogScrubbing {
  /// The rules that are applied to the logs for scrubbing.
  final List<WebApplicationFirewallScrubbingRulesResponse>? scrubbingRules;
  /// State of the log scrubbing config. Default value is Enabled.
  final String? state;

  /// Creates a new [PolicySettingsResponseLogScrubbing].
  /// [scrubbingRules] The rules that are applied to the logs for scrubbing.
  /// [state] State of the log scrubbing config. Default value is Enabled.
  PolicySettingsResponseLogScrubbing({
    this.scrubbingRules,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scrubbingRules': ?scrubbingRules == null ? null : pulumi.Input.encodeList<WebApplicationFirewallScrubbingRulesResponse, Map<String, dynamic>>(scrubbingRules!, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory PolicySettingsResponseLogScrubbing.fromMap(Map<String, dynamic> map) {
    return PolicySettingsResponseLogScrubbing(
      scrubbingRules: map['scrubbingRules'] == null ? null : pulumi.Input.decodeList<WebApplicationFirewallScrubbingRulesResponse>(map['scrubbingRules'], (value) => WebApplicationFirewallScrubbingRulesResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

