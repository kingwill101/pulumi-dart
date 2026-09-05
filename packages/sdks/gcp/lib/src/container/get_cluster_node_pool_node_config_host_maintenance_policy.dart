// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_host_maintenance_policy_opportunistic_maintenance_strategy.dart';

class GetClusterNodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final pulumi.Input<String> maintenanceInterval;
  /// Strategy that will trigger maintenance on behalf of the customer.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy>> opportunisticMaintenanceStrategies;

  /// Creates a new [GetClusterNodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  /// [opportunisticMaintenanceStrategies] Strategy that will trigger maintenance on behalf of the customer.
  const GetClusterNodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
    required this.opportunisticMaintenanceStrategies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
      'opportunisticMaintenanceStrategies': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy>, List<Map<String, dynamic>>>(opportunisticMaintenanceStrategies, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: pulumi.Input.fromValue(map['maintenanceInterval'] as String),
      opportunisticMaintenanceStrategies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy>(map['opportunisticMaintenanceStrategies']!, (value) => GetClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
