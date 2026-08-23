// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfigResponse {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcePersistentDiskCsiDriverConfigResponse].
  /// [enabled] Whether the Compute Engine PD CSI driver is enabled for this cluster.
  const GcePersistentDiskCsiDriverConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GcePersistentDiskCsiDriverConfigResponse.fromMap(Map<String, dynamic> map) {
    return GcePersistentDiskCsiDriverConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
