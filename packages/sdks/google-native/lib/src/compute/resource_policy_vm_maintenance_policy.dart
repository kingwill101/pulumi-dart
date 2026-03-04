// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_vm_maintenance_policy_concurrency_control.dart';
import 'resource_policy_vm_maintenance_policy_maintenance_window.dart';

class ResourcePolicyVmMaintenancePolicy {
  final pulumi.Input<ResourcePolicyVmMaintenancePolicyConcurrencyControl>?
  concurrencyControlGroup;

  /// Maintenance windows that are applied to VMs covered by this policy.
  final pulumi.Input<ResourcePolicyVmMaintenancePolicyMaintenanceWindow>?
  maintenanceWindow;

  /// Creates a new [ResourcePolicyVmMaintenancePolicy].
  /// [concurrencyControlGroup] Optional.
  /// [maintenanceWindow] Maintenance windows that are applied to VMs covered by this policy.
  ResourcePolicyVmMaintenancePolicy({
    this.concurrencyControlGroup,
    this.maintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyControlGroup':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicyVmMaintenancePolicyConcurrencyControl,
            Map<String, dynamic>
          >(concurrencyControlGroup, (value) => value.toMap()),
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicyVmMaintenancePolicyMaintenanceWindow,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyVmMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicy(
      concurrencyControlGroup: (() {
        final guardedValue = map['concurrencyControlGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicyVmMaintenancePolicyConcurrencyControl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maintenanceWindow: (() {
        final guardedValue = map['maintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicyVmMaintenancePolicyMaintenanceWindow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
