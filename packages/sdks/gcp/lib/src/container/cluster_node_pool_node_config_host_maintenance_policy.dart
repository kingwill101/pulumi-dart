// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_host_maintenance_policy_opportunistic_maintenance_strategy.dart';

class ClusterNodePoolNodeConfigHostMaintenancePolicy {
  /// Specifies the frequency of planned maintenance events. Possible values are `MAINTENANCE_INTERVAL_UNSPECIFIED`, `AS_NEEDED`, and `PERIODIC`.
  final pulumi.Input<String> maintenanceInterval;
  /// Strategy that will trigger maintenance on behalf of the customer. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy?>? opportunisticMaintenanceStrategy;

  /// Creates a new [ClusterNodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. Possible values are `MAINTENANCE_INTERVAL_UNSPECIFIED`, `AS_NEEDED`, and `PERIODIC`.
  /// [opportunisticMaintenanceStrategy] Strategy that will trigger maintenance on behalf of the customer. Structure is documented below.
  const ClusterNodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
    this.opportunisticMaintenanceStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
      'opportunisticMaintenanceStrategy': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy, Map<String, dynamic>>(opportunisticMaintenanceStrategy, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: pulumi.Input.fromValue(map['maintenanceInterval'] as String),
      opportunisticMaintenanceStrategy: (() { final guardedValue = map['opportunisticMaintenanceStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
