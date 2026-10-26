// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity {
  /// Number of characters after the finding to consider.
  final pulumi.Input<int?>? windowAfter;
  /// Number of characters before the finding to consider.
  final pulumi.Input<int?>? windowBefore;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider.
  const PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity(
      windowAfter: (() { final guardedValue = map['windowAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      windowBefore: (() { final guardedValue = map['windowBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
