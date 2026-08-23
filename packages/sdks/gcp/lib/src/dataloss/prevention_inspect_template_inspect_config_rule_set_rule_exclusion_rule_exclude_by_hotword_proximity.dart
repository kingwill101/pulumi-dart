// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity {
  /// Number of characters after the finding to consider.
  final pulumi.Input<int>? windowAfter;
  /// Number of characters before the finding to consider.
  final pulumi.Input<int>? windowBefore;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider.
  const PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity(
      windowAfter: (() { final guardedValue = map['windowAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      windowBefore: (() { final guardedValue = map['windowBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
