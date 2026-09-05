// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_host_maintenance_policy_opportunistic_maintenance_strategy.dart';

class NodePoolNodeConfigHostMaintenancePolicy {
  /// .
  final pulumi.Input<String> maintenanceInterval;
  /// Strategy that will trigger maintenance on behalf of the customer.
  final pulumi.Input<NodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy?>? opportunisticMaintenanceStrategy;

  /// Creates a new [NodePoolNodeConfigHostMaintenancePolicy].
  /// [maintenanceInterval] .
  /// [opportunisticMaintenanceStrategy] Strategy that will trigger maintenance on behalf of the customer.
  const NodePoolNodeConfigHostMaintenancePolicy({
    required this.maintenanceInterval,
    this.opportunisticMaintenanceStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
      'opportunisticMaintenanceStrategy': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy, Map<String, dynamic>>(opportunisticMaintenanceStrategy, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfigHostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigHostMaintenancePolicy(
      maintenanceInterval: pulumi.Input.fromValue(map['maintenanceInterval'] as String),
      opportunisticMaintenanceStrategy: (() { final guardedValue = map['opportunisticMaintenanceStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
