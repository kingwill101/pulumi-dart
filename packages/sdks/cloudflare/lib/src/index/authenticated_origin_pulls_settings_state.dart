// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthenticatedOriginPullsSettings resources.
class AuthenticatedOriginPullsSettingsState {
  /// Indicates whether zone-level authenticated origin pulls is enabled.
  final pulumi.Input<bool?>? enabled;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AuthenticatedOriginPullsSettingsState].
  /// [enabled] Indicates whether zone-level authenticated origin pulls is enabled.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsSettingsState({
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory AuthenticatedOriginPullsSettingsState.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsSettingsState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
