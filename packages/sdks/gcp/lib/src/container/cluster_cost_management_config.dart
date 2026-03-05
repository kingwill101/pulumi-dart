// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCostManagementConfig {
  /// Whether to enable the [cost allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterCostManagementConfig].
  /// [enabled] Whether to enable the [cost allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  ClusterCostManagementConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterCostManagementConfig.fromMap(Map<String, dynamic> map) {
    return ClusterCostManagementConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

