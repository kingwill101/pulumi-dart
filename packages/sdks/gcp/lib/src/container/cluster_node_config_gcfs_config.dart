// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigGcfsConfig {
  /// Whether or not the Google Container Filesystem (GCFS) is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodeConfigGcfsConfig].
  /// [enabled] Whether or not the Google Container Filesystem (GCFS) is enabled
  ClusterNodeConfigGcfsConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGcfsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
