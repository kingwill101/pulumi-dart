// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig {
  /// Whether or not GCFS is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

