// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfigResponse {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcsFuseCsiDriverConfigResponse].
  /// [enabled] Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  GcsFuseCsiDriverConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GcsFuseCsiDriverConfigResponse.fromMap(Map<String, dynamic> map) {
    return GcsFuseCsiDriverConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

