// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AadDiagnosticSettingEnabledLogRetentionPolicy {
  final pulumi.Input<int>? days;
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AadDiagnosticSettingEnabledLogRetentionPolicy].
  /// [days] Optional.
  /// [enabled] Optional.
  const AadDiagnosticSettingEnabledLogRetentionPolicy({
    this.days,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': ?enabled,
    };
  }

  factory AadDiagnosticSettingEnabledLogRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return AadDiagnosticSettingEnabledLogRetentionPolicy(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
