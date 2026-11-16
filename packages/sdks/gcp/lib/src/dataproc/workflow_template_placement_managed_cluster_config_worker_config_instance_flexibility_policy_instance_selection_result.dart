// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult {
  /// Output only. Full machine-type names, e.g. `n1-standard-16`.
  final pulumi.Input<String?>? machineType;
  /// Output only. Number of VM provisioned with the corresponding machine_type.
  final pulumi.Input<int?>? vmCount;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult].
  /// [machineType] Output only. Full machine-type names, e.g. `n1-standard-16`.
  /// [vmCount] Output only. Number of VM provisioned with the corresponding machine_type.
  const WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult({
    this.machineType,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': ?machineType,
      'vmCount': ?vmCount,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult(
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmCount: (() { final guardedValue = map['vmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
