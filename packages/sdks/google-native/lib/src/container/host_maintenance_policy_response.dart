// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opportunistic_maintenance_strategy_response.dart';

/// HostMaintenancePolicy contains the maintenance policy for the hosts on which the GKE VMs run on.
class HostMaintenancePolicyResponse {
  /// Specifies the frequency of planned maintenance events.
  final pulumi.Input<String> maintenanceInterval;
  /// Strategy that will trigger maintenance on behalf of the customer.
  final pulumi.Input<OpportunisticMaintenanceStrategyResponse> opportunisticMaintenanceStrategy;

  /// Creates a new [HostMaintenancePolicyResponse].
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events.
  /// [opportunisticMaintenanceStrategy] Strategy that will trigger maintenance on behalf of the customer.
  HostMaintenancePolicyResponse({
    required this.maintenanceInterval,
    required this.opportunisticMaintenanceStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceInterval': maintenanceInterval,
      'opportunisticMaintenanceStrategy': pulumi.Input.mapInputValue<OpportunisticMaintenanceStrategyResponse, Map<String, dynamic>>(opportunisticMaintenanceStrategy, (value) => value.toMap()),
    };
  }

  factory HostMaintenancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return HostMaintenancePolicyResponse(
      maintenanceInterval: (map['maintenanceInterval'] as String).input(),
      opportunisticMaintenanceStrategy: (OpportunisticMaintenanceStrategyResponse.fromMap((map['opportunisticMaintenanceStrategy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

