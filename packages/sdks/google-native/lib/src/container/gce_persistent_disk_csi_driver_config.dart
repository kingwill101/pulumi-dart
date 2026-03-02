// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfig {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GcePersistentDiskCsiDriverConfig].
  /// [enabled] Whether the Compute Engine PD CSI driver is enabled for this cluster.
  GcePersistentDiskCsiDriverConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GcePersistentDiskCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GcePersistentDiskCsiDriverConfig(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

