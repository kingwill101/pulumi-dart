// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_utilization_metrics_vmmigration_v1alpha1.dart';
import 'vmware_vm_details_vmmigration_v1alpha1.dart';

/// Utilization information of a single VM.
class VmUtilizationInfoVmmigrationV1alpha1 {
  /// Utilization metrics for this VM.
  final pulumi.Input<VmUtilizationMetricsVmmigrationV1alpha1>? utilization;
  /// The VM's ID in the source.
  final pulumi.Input<String>? vmId;
  /// The description of the VM in a Source of type Vmware.
  final pulumi.Input<VmwareVmDetailsVmmigrationV1alpha1>? vmwareVmDetails;

  /// Creates a new [VmUtilizationInfoVmmigrationV1alpha1].
  /// [utilization] Utilization metrics for this VM.
  /// [vmId] The VM's ID in the source.
  /// [vmwareVmDetails] The description of the VM in a Source of type Vmware.
  VmUtilizationInfoVmmigrationV1alpha1({
    this.utilization,
    this.vmId,
    this.vmwareVmDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'utilization': ?pulumi.Input.mapOptionalInputValue<VmUtilizationMetricsVmmigrationV1alpha1, Map<String, dynamic>>(utilization, (value) => value.toMap()),
      'vmId': ?vmId,
      'vmwareVmDetails': ?pulumi.Input.mapOptionalInputValue<VmwareVmDetailsVmmigrationV1alpha1, Map<String, dynamic>>(vmwareVmDetails, (value) => value.toMap()),
    };
  }

  factory VmUtilizationInfoVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmUtilizationInfoVmmigrationV1alpha1(
      utilization: (() { final guardedValue = map['utilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmUtilizationMetricsVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareVmDetails: (() { final guardedValue = map['vmwareVmDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareVmDetailsVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

