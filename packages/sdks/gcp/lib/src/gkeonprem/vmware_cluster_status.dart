// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_status_condition.dart';

class VMwareClusterStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from user cluster controller.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterStatusCondition>>? conditions;
  /// (Output)
  /// Human-friendly representation of the error message from the user cluster
  /// controller. The error message can be temporary as the user cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [VMwareClusterStatus].
  /// [conditions] (Output)
  /// [errorMessage] (Output)
  const VMwareClusterStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<VMwareClusterStatusCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<VMwareClusterStatusCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorMessage': ?errorMessage,
    };
  }

  factory VMwareClusterStatus.fromMap(Map<String, dynamic> map) {
    return VMwareClusterStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMwareClusterStatusCondition>(guardedValue, (value) => VMwareClusterStatusCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

