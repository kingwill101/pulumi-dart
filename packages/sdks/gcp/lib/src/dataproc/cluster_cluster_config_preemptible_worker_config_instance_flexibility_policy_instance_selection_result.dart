// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult {
  /// Full machine-type names, e.g. "n1-standard-16".
  final pulumi.Input<String>? machineType;

  /// Number of VM provisioned with the machine_type.
  final pulumi.Input<int>? vmCount;

  /// Creates a new [ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult].
  /// [machineType] Full machine-type names, e.g. "n1-standard-16".
  /// [vmCount] Number of VM provisioned with the machine_type.
  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult({
    this.machineType,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'machineType': ?machineType, 'vmCount': ?vmCount};
  }

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult(
      machineType: (() {
        final guardedValue = map['machineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmCount: (() {
        final guardedValue = map['vmCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
