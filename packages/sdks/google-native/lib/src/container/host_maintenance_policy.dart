// ignore_for_file: unused_element, unnecessary_cast

import 'host_maintenance_policy_maintenance_interval.dart';
import 'opportunistic_maintenance_strategy.dart';

/// HostMaintenancePolicy contains the maintenance policy for the hosts on which the GKE VMs run on.
class HostMaintenancePolicy {
  /// Specifies the frequency of planned maintenance events.
  final HostMaintenancePolicyMaintenanceInterval? maintenanceInterval;
  /// Strategy that will trigger maintenance on behalf of the customer.
  final OpportunisticMaintenanceStrategy? opportunisticMaintenanceStrategy;

  /// Creates a new [HostMaintenancePolicy].
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events.
  /// [opportunisticMaintenanceStrategy] Strategy that will trigger maintenance on behalf of the customer.
  HostMaintenancePolicy({
    this.maintenanceInterval,
    this.opportunisticMaintenanceStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': ?maintenanceInterval == null ? null : maintenanceInterval!.value,
      'opportunisticMaintenanceStrategy': ?opportunisticMaintenanceStrategy == null ? null : opportunisticMaintenanceStrategy!.toMap(),
    };
  }

  factory HostMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return HostMaintenancePolicy(
      maintenanceInterval: map['maintenanceInterval'] == null ? null : HostMaintenancePolicyMaintenanceInterval.fromValue(map['maintenanceInterval'] as String),
      opportunisticMaintenanceStrategy: map['opportunisticMaintenanceStrategy'] == null ? null : OpportunisticMaintenanceStrategy.fromMap((map['opportunisticMaintenanceStrategy'] as Map).cast<String, dynamic>()),
    );
  }
}

