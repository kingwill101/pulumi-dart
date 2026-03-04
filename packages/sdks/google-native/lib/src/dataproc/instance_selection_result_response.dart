// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a mapping from machine types to the number of VMs that are created with each machine type.
class InstanceSelectionResultResponse {
  /// Full machine-type names, e.g. "n1-standard-16".
  final pulumi.Input<String> machineType;

  /// Number of VM provisioned with the machine_type.
  final pulumi.Input<int> vmCount;

  /// Creates a new [InstanceSelectionResultResponse].
  /// [machineType] Full machine-type names, e.g. "n1-standard-16".
  /// [vmCount] Number of VM provisioned with the machine_type.
  InstanceSelectionResultResponse({
    required this.machineType,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'machineType': machineType, 'vmCount': vmCount};
  }

  factory InstanceSelectionResultResponse.fromMap(Map<String, dynamic> map) {
    return InstanceSelectionResultResponse(
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      vmCount: pulumi.Input.fromValue(map['vmCount'] as int),
    );
  }
}
