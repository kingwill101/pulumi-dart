// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LeakedCredentialCheck resources.
class LeakedCredentialCheckState {
  /// Determines whether or not Leaked Credential Checks are enabled.
  final pulumi.Input<bool?>? enabled;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LeakedCredentialCheckState].
  /// [enabled] Determines whether or not Leaked Credential Checks are enabled.
  /// [zoneId] Defines an identifier.
  const LeakedCredentialCheckState({
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory LeakedCredentialCheckState.fromMap(Map<String, dynamic> map) {
    return LeakedCredentialCheckState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
