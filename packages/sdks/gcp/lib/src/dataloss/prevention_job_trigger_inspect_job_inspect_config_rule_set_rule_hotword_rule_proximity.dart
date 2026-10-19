// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity {
  /// Number of characters after the finding to consider. Either this or windowBefore must be specified
  final pulumi.Input<int?>? windowAfter;
  /// Number of characters before the finding to consider. Either this or windowAfter must be specified
  final pulumi.Input<int?>? windowBefore;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity].
  /// [windowAfter] Number of characters after the finding to consider. Either this or windowBefore must be specified
  /// [windowBefore] Number of characters before the finding to consider. Either this or windowAfter must be specified
  const PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity({
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
      windowAfter: (() { final guardedValue = map['windowAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      windowBefore: (() { final guardedValue = map['windowBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
