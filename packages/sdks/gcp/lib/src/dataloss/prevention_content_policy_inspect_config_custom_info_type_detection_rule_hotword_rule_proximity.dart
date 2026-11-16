// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity {
  /// Number of characters after the finding to consider.
  final pulumi.Input<int?>? windowAfter;
  /// Number of characters before the finding to consider.
  final pulumi.Input<int?>? windowBefore;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider.
  const PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity(
      windowAfter: (() { final guardedValue = map['windowAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      windowBefore: (() { final guardedValue = map['windowBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
