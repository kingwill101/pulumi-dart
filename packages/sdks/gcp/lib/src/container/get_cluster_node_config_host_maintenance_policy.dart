// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_host_maintenance_policy_opportunistic_maintenance_strategy.dart';

class GetClusterNodeConfigHostMaintenancePolicy {
  /// .
  final pulumi.Input<String> maintenanceInterval;
  /// Strategy that will trigger maintenance on behalf of the customer.
  final pulumi.Input<List<GetClusterNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy>> opportunisticMaintenanceStrategies;

  /// Creates a new [GetClusterNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  /// [opportunisticMaintenanceStrategies] Strategy that will trigger maintenance on behalf of the customer.
  const GetClusterNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
    required this.opportunisticMaintenanceStrategies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
      'opportunisticMaintenanceStrategies': pulumi.Input.mapInputValue<List<GetClusterNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy>, List<Map<String, dynamic>>>(opportunisticMaintenanceStrategies, (value) => pulumi.Input.encodeList<GetClusterNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodeConfigHostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigHostMaintenancePolicy(
      maintenanceInterval: pulumi.Input.fromValue(map['maintenanceInterval'] as String),
      opportunisticMaintenanceStrategies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy>(map['opportunisticMaintenanceStrategies']!, (value) => GetClusterNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
