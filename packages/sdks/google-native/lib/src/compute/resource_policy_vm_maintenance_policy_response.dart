// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_vm_maintenance_policy_concurrency_control_response.dart';
import 'resource_policy_vm_maintenance_policy_maintenance_window_response.dart';

class ResourcePolicyVmMaintenancePolicyResponse {
  final pulumi.Input<ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse> concurrencyControlGroup;
  /// Maintenance windows that are applied to VMs covered by this policy.
  final pulumi.Input<ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse> maintenanceWindow;

  /// Creates a new [ResourcePolicyVmMaintenancePolicyResponse].
  /// [concurrencyControlGroup] Required.
  /// [maintenanceWindow] Maintenance windows that are applied to VMs covered by this policy.
  const ResourcePolicyVmMaintenancePolicyResponse({
    required this.concurrencyControlGroup,
    required this.maintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyControlGroup': pulumi.Input.mapInputValue<ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse, Map<String, dynamic>>(concurrencyControlGroup, (value) => value.toMap()),
      'maintenanceWindow': pulumi.Input.mapInputValue<ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyVmMaintenancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicyResponse(
      concurrencyControlGroup: pulumi.Input.fromValue(ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse.fromMap((map['concurrencyControlGroup']! as Map).cast<String, dynamic>())),
      maintenanceWindow: pulumi.Input.fromValue(ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())),
    );
  }
}
