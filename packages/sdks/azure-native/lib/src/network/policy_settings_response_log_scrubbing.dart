// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_application_firewall_scrubbing_rules_response.dart';

/// To scrub sensitive log fields
class PolicySettingsResponseLogScrubbing {
  /// The rules that are applied to the logs for scrubbing.
  final pulumi.Input<List<WebApplicationFirewallScrubbingRulesResponse>>?
  scrubbingRules;

  /// State of the log scrubbing config. Default value is Enabled.
  final pulumi.Input<String>? state;

  /// Creates a new [PolicySettingsResponseLogScrubbing].
  /// [scrubbingRules] The rules that are applied to the logs for scrubbing.
  /// [state] State of the log scrubbing config. Default value is Enabled.
  PolicySettingsResponseLogScrubbing({this.scrubbingRules, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scrubbingRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<WebApplicationFirewallScrubbingRulesResponse>,
            List<Map<String, dynamic>>
          >(
            scrubbingRules,
            (value) =>
                pulumi.Input.encodeList<
                  WebApplicationFirewallScrubbingRulesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'state': ?state,
    };
  }

  factory PolicySettingsResponseLogScrubbing.fromMap(Map<String, dynamic> map) {
    return PolicySettingsResponseLogScrubbing(
      scrubbingRules: (() {
        final guardedValue = map['scrubbingRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WebApplicationFirewallScrubbingRulesResponse>(
            guardedValue,
            (value) => WebApplicationFirewallScrubbingRulesResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
