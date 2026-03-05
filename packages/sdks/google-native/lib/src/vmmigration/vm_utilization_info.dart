// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_utilization_metrics.dart';
import 'vmware_vm_details.dart';

/// Utilization information of a single VM.
class VmUtilizationInfo {
  /// Utilization metrics for this VM.
  final pulumi.Input<VmUtilizationMetrics>? utilization;
  /// The VM's ID in the source.
  final pulumi.Input<String>? vmId;
  /// The description of the VM in a Source of type Vmware.
  final pulumi.Input<VmwareVmDetails>? vmwareVmDetails;

  /// Creates a new [VmUtilizationInfo].
  /// [utilization] Utilization metrics for this VM.
  /// [vmId] The VM's ID in the source.
  /// [vmwareVmDetails] The description of the VM in a Source of type Vmware.
  VmUtilizationInfo({
    this.utilization,
    this.vmId,
    this.vmwareVmDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'utilization': ?pulumi.Input.mapOptionalInputValue<VmUtilizationMetrics, Map<String, dynamic>>(utilization, (value) => value.toMap()),
      'vmId': ?vmId,
      'vmwareVmDetails': ?pulumi.Input.mapOptionalInputValue<VmwareVmDetails, Map<String, dynamic>>(vmwareVmDetails, (value) => value.toMap()),
    };
  }

  factory VmUtilizationInfo.fromMap(Map<String, dynamic> map) {
    return VmUtilizationInfo(
      utilization: (() { final guardedValue = map['utilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmUtilizationMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareVmDetails: (() { final guardedValue = map['vmwareVmDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareVmDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

