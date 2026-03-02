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
  AlertPrometheusRuleGroupRuleAlertResolution({
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
      autoResolved: map['autoResolved'] == null ? null : (map['autoResolved']! as bool).input(),
      timeToResolve: map['timeToResolve'] == null ? null : (map['timeToResolve']! as String).input(),
    );
  }
}

