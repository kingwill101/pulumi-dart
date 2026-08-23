// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPrometheusRuleGroupRuleAlertResolution {
  /// Is the alert auto-resolution? Possible values are `true` and `false`.
  final pulumi.Input<bool>? autoResolved;
  /// Specifies the alert auto-resolution interval, represented in ISO 8601 duration format.
  final pulumi.Input<String>? timeToResolve;

  /// Creates a new [AlertPrometheusRuleGroupRuleAlertResolution].
  /// [autoResolved] Is the alert auto-resolution? Possible values are `true` and `false`.
  /// [timeToResolve] Specifies the alert auto-resolution interval, represented in ISO 8601 duration format.
  const AlertPrometheusRuleGroupRuleAlertResolution({
    this.autoResolved,
    this.timeToResolve,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResolved': ?autoResolved,
      'timeToResolve': ?timeToResolve,
    };
  }

  factory AlertPrometheusRuleGroupRuleAlertResolution.fromMap(Map<String, dynamic> map) {
    return AlertPrometheusRuleGroupRuleAlertResolution(
      autoResolved: (() { final guardedValue = map['autoResolved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeToResolve: (() { final guardedValue = map['timeToResolve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
