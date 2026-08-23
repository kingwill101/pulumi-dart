// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigGcfsConfig {
  /// Whether or not the Google Container Filesystem (GCFS) is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodePoolNodeConfigGcfsConfig].
  /// [enabled] Whether or not the Google Container Filesystem (GCFS) is enabled
  const ClusterNodePoolNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigGcfsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
