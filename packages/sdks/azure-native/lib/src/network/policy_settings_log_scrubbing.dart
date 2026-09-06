// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_application_firewall_scrubbing_rules.dart';

/// To scrub sensitive log fields
class PolicySettingsLogScrubbing {
  /// The rules that are applied to the logs for scrubbing.
  final pulumi.Input<List<WebApplicationFirewallScrubbingRules>?>? scrubbingRules;
  /// State of the log scrubbing config. Default value is Enabled.
  final pulumi.Input<dynamic>? state;

  /// Creates a new [PolicySettingsLogScrubbing].
  /// [scrubbingRules] The rules that are applied to the logs for scrubbing.
  /// [state] State of the log scrubbing config. Default value is Enabled.
  const PolicySettingsLogScrubbing({
    this.scrubbingRules,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scrubbingRules': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationFirewallScrubbingRules>, List<Map<String, dynamic>>>(scrubbingRules, (value) => pulumi.Input.encodeList<WebApplicationFirewallScrubbingRules, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory PolicySettingsLogScrubbing.fromMap(Map<String, dynamic> map) {
    return PolicySettingsLogScrubbing(
      scrubbingRules: (() { final guardedValue = map['scrubbingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationFirewallScrubbingRules>(guardedValue, (value) => WebApplicationFirewallScrubbingRules.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
