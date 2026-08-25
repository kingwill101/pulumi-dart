// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult {
  /// Full machine-type names, e.g. "n1-standard-16".
  final pulumi.Input<String?>? machineType;
  /// Number of VM provisioned with the machine_type.
  final pulumi.Input<int?>? vmCount;

  /// Creates a new [ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult].
  /// [machineType] Full machine-type names, e.g. "n1-standard-16".
  /// [vmCount] Number of VM provisioned with the machine_type.
  const ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult({
    this.machineType,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': ?machineType,
      'vmCount': ?vmCount,
    };
  }

  factory ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult(
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmCount: (() { final guardedValue = map['vmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
