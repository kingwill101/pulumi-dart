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
      utilization: map['utilization'] == null ? null : (VmUtilizationMetrics.fromMap((map['utilization']! as Map).cast<String, dynamic>())).input(),
      vmId: map['vmId'] == null ? null : (map['vmId']! as String).input(),
      vmwareVmDetails: map['vmwareVmDetails'] == null ? null : (VmwareVmDetails.fromMap((map['vmwareVmDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

