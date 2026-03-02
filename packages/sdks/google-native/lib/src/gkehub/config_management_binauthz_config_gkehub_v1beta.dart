// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Binauthz
class ConfigManagementBinauthzConfigGkehubV1beta {
  /// Whether binauthz is enabled in this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ConfigManagementBinauthzConfigGkehubV1beta].
  /// [enabled] Whether binauthz is enabled in this cluster.
  ConfigManagementBinauthzConfigGkehubV1beta({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfigManagementBinauthzConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfigGkehubV1beta(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

