// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPrivateClusterConfigMasterGlobalAccessConfig {
  /// Whether the cluster master is accessible globally or
  /// not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterPrivateClusterConfigMasterGlobalAccessConfig].
  /// [enabled] Whether the cluster master is accessible globally or
  const ClusterPrivateClusterConfigMasterGlobalAccessConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterPrivateClusterConfigMasterGlobalAccessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPrivateClusterConfigMasterGlobalAccessConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
