// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyWorkloadPolicy {
  /// The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if max topology distance is set.
  final pulumi.Input<String?>? acceleratorTopology;
  /// (Optional, Beta)
  /// Specifies the connection mode for the accelerator topology.
  /// Supported values are:
  /// * `AUTO_CONNECT`: The interconnected chips are pre-configured at the time of VM creation.
  /// * `PROVISION_ONLY`: The interconnected chips are connected on demand. At the time of VM creation, the chips are not connected.
  /// If not specified, the default is AUTO_CONNECT.
  /// This field can be set only when the workload policy type is HIGH_THROUGHPUT and cannot be set if max topology distance is set.
  /// Possible values are: `AUTO_CONNECT`, `PROVISION_ONLY`.
  final pulumi.Input<String?>? acceleratorTopologyMode;
  /// The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if accelerator topology or accelerator topology mode is set.
  /// Possible values are: `BLOCK`, `CLUSTER`, `SUBBLOCK`.
  final pulumi.Input<String?>? maxTopologyDistance;
  /// The type of workload policy.
  /// Possible values are: `HIGH_AVAILABILITY`, `HIGH_THROUGHPUT`.
  final pulumi.Input<String> type;

  /// Creates a new [ResourcePolicyWorkloadPolicy].
  /// [acceleratorTopology] The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [acceleratorTopologyMode] (Optional, Beta)
  /// [maxTopologyDistance] The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [type] The type of workload policy.
  const ResourcePolicyWorkloadPolicy({
    this.acceleratorTopology,
    this.acceleratorTopologyMode,
    this.maxTopologyDistance,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTopology': ?acceleratorTopology,
      'acceleratorTopologyMode': ?acceleratorTopologyMode,
      'maxTopologyDistance': ?maxTopologyDistance,
      'type': type,
    };
  }

  factory ResourcePolicyWorkloadPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWorkloadPolicy(
      acceleratorTopology: (() { final guardedValue = map['acceleratorTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acceleratorTopologyMode: (() { final guardedValue = map['acceleratorTopologyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTopologyDistance: (() { final guardedValue = map['maxTopologyDistance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
