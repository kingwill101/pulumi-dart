// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonsConfigAddonsConfigApiSecurityConfig {
  /// Flag that specifies whether the API security add-on is enabled.
  final pulumi.Input<bool?>? enabled;
  /// (Output)
  /// Time at which the API Security add-on expires in in milliseconds since epoch. If unspecified, the add-on will never expire.
  final pulumi.Input<String?>? expiresAt;

  /// Creates a new [AddonsConfigAddonsConfigApiSecurityConfig].
  /// [enabled] Flag that specifies whether the API security add-on is enabled.
  /// [expiresAt] (Output)
  const AddonsConfigAddonsConfigApiSecurityConfig({
    this.enabled,
    this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'expiresAt': ?expiresAt,
    };
  }

  factory AddonsConfigAddonsConfigApiSecurityConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfigAddonsConfigApiSecurityConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
