// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  GetClusterNodePoolNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGcfsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

