// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity {
  /// Number of characters after the finding to consider.
  final pulumi.Input<int?>? windowAfter;
  /// Number of characters before the finding to consider.
  final pulumi.Input<int?>? windowBefore;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider.
  const PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity(
      windowAfter: (() { final guardedValue = map['windowAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      windowBefore: (() { final guardedValue = map['windowBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
