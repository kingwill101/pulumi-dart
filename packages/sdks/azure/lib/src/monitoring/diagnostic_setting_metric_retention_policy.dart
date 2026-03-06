// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticSettingMetricRetentionPolicy {
  final pulumi.Input<int>? days;
  final pulumi.Input<bool> enabled;

  /// Creates a new [DiagnosticSettingMetricRetentionPolicy].
  /// [days] Optional.
  /// [enabled] Required.
  const DiagnosticSettingMetricRetentionPolicy({
    this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': enabled,
    };
  }

  factory DiagnosticSettingMetricRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingMetricRetentionPolicy(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

