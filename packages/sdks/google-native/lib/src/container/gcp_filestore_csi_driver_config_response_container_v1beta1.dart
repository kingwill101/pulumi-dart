// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfigResponseContainerV1beta1 {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcpFilestoreCsiDriverConfigResponseContainerV1beta1].
  /// [enabled] Whether the GCP Filestore CSI driver is enabled for this cluster.
  GcpFilestoreCsiDriverConfigResponseContainerV1beta1({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GcpFilestoreCsiDriverConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcpFilestoreCsiDriverConfigResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
