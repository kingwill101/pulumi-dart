// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_utilization_metrics_response.dart';
import 'vmware_vm_details_response.dart';

/// Utilization information of a single VM.
class VmUtilizationInfoResponse {
  /// Utilization metrics for this VM.
  final pulumi.Input<VmUtilizationMetricsResponse> utilization;
  /// The VM's ID in the source.
  final pulumi.Input<String> vmId;
  /// The description of the VM in a Source of type Vmware.
  final pulumi.Input<VmwareVmDetailsResponse> vmwareVmDetails;

  /// Creates a new [VmUtilizationInfoResponse].
  /// [utilization] Utilization metrics for this VM.
  /// [vmId] The VM's ID in the source.
  /// [vmwareVmDetails] The description of the VM in a Source of type Vmware.
  VmUtilizationInfoResponse({
    required this.utilization,
    required this.vmId,
    required this.vmwareVmDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'utilization': pulumi.Input.mapInputValue<VmUtilizationMetricsResponse, Map<String, dynamic>>(utilization, (value) => value.toMap()),
      'vmId': vmId,
      'vmwareVmDetails': pulumi.Input.mapInputValue<VmwareVmDetailsResponse, Map<String, dynamic>>(vmwareVmDetails, (value) => value.toMap()),
    };
  }

  factory VmUtilizationInfoResponse.fromMap(Map<String, dynamic> map) {
    return VmUtilizationInfoResponse(
      utilization: (VmUtilizationMetricsResponse.fromMap((map['utilization'] as Map).cast<String, dynamic>())).input(),
      vmId: (map['vmId'] as String).input(),
      vmwareVmDetails: (VmwareVmDetailsResponse.fromMap((map['vmwareVmDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

