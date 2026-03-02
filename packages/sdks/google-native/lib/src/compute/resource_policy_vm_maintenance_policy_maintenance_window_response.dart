// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle_response.dart';

/// A maintenance window for VMs. When set, we restrict our maintenance operations to this window.
class ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse {
  final pulumi.Input<ResourcePolicyDailyCycleResponse> dailyMaintenanceWindow;

  /// Creates a new [ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse].
  /// [dailyMaintenanceWindow] Required.
  ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse({
    required this.dailyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': pulumi.Input.mapInputValue<ResourcePolicyDailyCycleResponse, Map<String, dynamic>>(dailyMaintenanceWindow, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse(
      dailyMaintenanceWindow: (ResourcePolicyDailyCycleResponse.fromMap((map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

