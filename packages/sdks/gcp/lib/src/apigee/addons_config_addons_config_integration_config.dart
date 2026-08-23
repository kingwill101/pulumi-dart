// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonsConfigAddonsConfigIntegrationConfig {
  /// Flag that specifies whether the Integration add-on is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AddonsConfigAddonsConfigIntegrationConfig].
  /// [enabled] Flag that specifies whether the Integration add-on is enabled.
  const AddonsConfigAddonsConfigIntegrationConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AddonsConfigAddonsConfigIntegrationConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfigAddonsConfigIntegrationConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
