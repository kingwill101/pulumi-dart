// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigGvnic {
  /// Whether or not the Google Virtual NIC (gVNIC) is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodePoolNodeConfigGvnic].
  /// [enabled] Whether or not the Google Virtual NIC (gVNIC) is enabled
  const ClusterNodePoolNodeConfigGvnic({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigGvnic(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

