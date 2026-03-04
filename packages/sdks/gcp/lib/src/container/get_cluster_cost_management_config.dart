// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterCostManagementConfig {
  /// Whether to enable GKE cost allocation. When you enable GKE cost allocation, the cluster name and namespace of your GKE workloads appear in the labels field of the billing export to BigQuery. Defaults to false.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterCostManagementConfig].
  /// [enabled] Whether to enable GKE cost allocation. When you enable GKE cost allocation, the cluster name and namespace of your GKE workloads appear in the labels field of the billing export to BigQuery. Defaults to false.
  GetClusterCostManagementConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterCostManagementConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterCostManagementConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
