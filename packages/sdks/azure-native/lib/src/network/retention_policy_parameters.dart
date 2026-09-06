// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that define the retention policy for flow log.
class RetentionPolicyParameters {
  /// Number of days to retain flow log records.
  final pulumi.Input<int?>? days;
  /// Flag to enable/disable retention.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [RetentionPolicyParameters].
  /// [days] Number of days to retain flow log records.
  /// [enabled] Flag to enable/disable retention.
  RetentionPolicyParameters({
    pulumi.Input<int?>? days,
    pulumi.Input<bool?>? enabled,
  }) : days = days ?? pulumi.Input.fromValue(0), enabled = enabled ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': ?enabled,
    };
  }

  factory RetentionPolicyParameters.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyParameters(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
