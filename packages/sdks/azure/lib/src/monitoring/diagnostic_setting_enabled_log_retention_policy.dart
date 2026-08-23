// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticSettingEnabledLogRetentionPolicy {
  final pulumi.Input<int>? days;
  final pulumi.Input<bool> enabled;

  /// Creates a new [DiagnosticSettingEnabledLogRetentionPolicy].
  /// [days] Optional.
  /// [enabled] Required.
  const DiagnosticSettingEnabledLogRetentionPolicy({
    this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': enabled,
    };
  }

  factory DiagnosticSettingEnabledLogRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingEnabledLogRetentionPolicy(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
