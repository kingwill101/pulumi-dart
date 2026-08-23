// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity {
  /// Number of characters after the finding to consider. Either this or windowBefore must be specified
  final pulumi.Input<int>? windowAfter;
  /// Number of characters before the finding to consider. Either this or windowAfter must be specified
  final pulumi.Input<int>? windowBefore;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity].
  /// [windowAfter] Number of characters after the finding to consider. Either this or windowBefore must be specified
  /// [windowBefore] Number of characters before the finding to consider. Either this or windowAfter must be specified
  const PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity(
      windowAfter: (() { final guardedValue = map['windowAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      windowBefore: (() { final guardedValue = map['windowBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
