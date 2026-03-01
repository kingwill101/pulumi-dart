// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_vm_maintenance_policy_concurrency_control_response.dart';
import 'resource_policy_vm_maintenance_policy_maintenance_window_response.dart';

class ResourcePolicyVmMaintenancePolicyResponse {
  final ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse concurrencyControlGroup;
  /// Maintenance windows that are applied to VMs covered by this policy.
  final ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse maintenanceWindow;

  /// Creates a new [ResourcePolicyVmMaintenancePolicyResponse].
  /// [concurrencyControlGroup] Required.
  /// [maintenanceWindow] Maintenance windows that are applied to VMs covered by this policy.
  ResourcePolicyVmMaintenancePolicyResponse({
    required this.concurrencyControlGroup,
    required this.maintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyControlGroup': concurrencyControlGroup.toMap(),
      'maintenanceWindow': maintenanceWindow.toMap(),
    };
  }

  factory ResourcePolicyVmMaintenancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicyResponse(
      concurrencyControlGroup: ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse.fromMap((map['concurrencyControlGroup'] as Map).cast<String, dynamic>()),
      maintenanceWindow: ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
    );
  }
}

