// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the KALM addon.
class KalmConfig {
  /// Whether KALM is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [KalmConfig].
  /// [enabled] Whether KALM is enabled for this cluster.
  KalmConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory KalmConfig.fromMap(Map<String, dynamic> map) {
    return KalmConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

