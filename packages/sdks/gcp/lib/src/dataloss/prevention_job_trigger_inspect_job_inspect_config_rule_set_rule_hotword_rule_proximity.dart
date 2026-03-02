// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity {
  /// Number of characters after the finding to consider. Either this or window_before must be specified
  final pulumi.Input<int>? windowAfter;
  /// Number of characters before the finding to consider. Either this or window_after must be specified
  final pulumi.Input<int>? windowBefore;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity].
  /// [windowAfter] Number of characters after the finding to consider. Either this or window_before must be specified
  /// [windowBefore] Number of characters before the finding to consider. Either this or window_after must be specified
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity(
      windowAfter: map['windowAfter'] == null ? null : (map['windowAfter']! as int).input(),
      windowBefore: map['windowBefore'] == null ? null : (map['windowBefore']! as int).input(),
    );
  }
}

