// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfigResponseContainerV1beta1 {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcePersistentDiskCsiDriverConfigResponseContainerV1beta1].
  /// [enabled] Whether the Compute Engine PD CSI driver is enabled for this cluster.
  GcePersistentDiskCsiDriverConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GcePersistentDiskCsiDriverConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GcePersistentDiskCsiDriverConfigResponseContainerV1beta1(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

