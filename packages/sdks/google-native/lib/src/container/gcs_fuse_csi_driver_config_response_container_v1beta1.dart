// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfigResponseContainerV1beta1 {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcsFuseCsiDriverConfigResponseContainerV1beta1].
  /// [enabled] Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  GcsFuseCsiDriverConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GcsFuseCsiDriverConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GcsFuseCsiDriverConfigResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

