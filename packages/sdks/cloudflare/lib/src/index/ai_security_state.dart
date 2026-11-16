// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiSecurity resources.
class AiSecurityState {
  /// Whether AI Security for Apps is enabled on the zone.
  final pulumi.Input<bool?>? enabled;
  /// Defines the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AiSecurityState].
  /// [enabled] Whether AI Security for Apps is enabled on the zone.
  /// [zoneId] Defines the zone.
  const AiSecurityState({
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory AiSecurityState.fromMap(Map<String, dynamic> map) {
    return AiSecurityState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
