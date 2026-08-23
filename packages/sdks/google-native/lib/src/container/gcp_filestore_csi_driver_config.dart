// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfig {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GcpFilestoreCsiDriverConfig].
  /// [enabled] Whether the GCP Filestore CSI driver is enabled for this cluster.
  const GcpFilestoreCsiDriverConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GcpFilestoreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
