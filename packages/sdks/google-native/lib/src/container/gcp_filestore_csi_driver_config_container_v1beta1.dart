// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfigContainerV1beta1 {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GcpFilestoreCsiDriverConfigContainerV1beta1].
  /// [enabled] Whether the GCP Filestore CSI driver is enabled for this cluster.
  const GcpFilestoreCsiDriverConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GcpFilestoreCsiDriverConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfigContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

