// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonsConfigAddonsConfigConnectorsPlatformConfig {
  /// Flag that specifies whether the Connectors Platform add-on is enabled.
  final pulumi.Input<bool>? enabled;

  /// (Output)
  /// Time at which the Connectors Platform add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.
  final pulumi.Input<String>? expiresAt;

  /// Creates a new [AddonsConfigAddonsConfigConnectorsPlatformConfig].
  /// [enabled] Flag that specifies whether the Connectors Platform add-on is enabled.
  /// [expiresAt] (Output)
  AddonsConfigAddonsConfigConnectorsPlatformConfig({
    this.enabled,
    this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'expiresAt': ?expiresAt};
  }

  factory AddonsConfigAddonsConfigConnectorsPlatformConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AddonsConfigAddonsConfigConnectorsPlatformConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      expiresAt: (() {
        final guardedValue = map['expiresAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
