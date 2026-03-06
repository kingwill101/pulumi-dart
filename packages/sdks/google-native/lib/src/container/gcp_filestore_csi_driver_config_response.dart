// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfigResponse {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcpFilestoreCsiDriverConfigResponse].
  /// [enabled] Whether the GCP Filestore CSI driver is enabled for this cluster.
  const GcpFilestoreCsiDriverConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GcpFilestoreCsiDriverConfigResponse.fromMap(Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

