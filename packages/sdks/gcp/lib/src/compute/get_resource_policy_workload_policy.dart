// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicyWorkloadPolicy {
  /// The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if max topology distance is set.
  final pulumi.Input<String> acceleratorTopology;
  /// Specifies the connection mode for the accelerator topology.
  /// Supported values are:
  /// * 'AUTO_CONNECT': The interconnected chips are pre-configured at the time of VM creation.
  /// * 'PROVISION_ONLY': The interconnected chips are connected on demand. At the time of VM creation, the chips are not connected.
  ///
  /// If not specified, the default is AUTO_CONNECT.
  /// This field can be set only when the workload policy type is HIGH_THROUGHPUT and cannot be set if max topology distance is set. Possible values: ["AUTO_CONNECT", "PROVISION_ONLY"]
  final pulumi.Input<String> acceleratorTopologyMode;
  /// The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if accelerator topology or accelerator topology mode is set. Possible values: ["BLOCK", "CLUSTER", "SUBBLOCK"]
  final pulumi.Input<String> maxTopologyDistance;
  /// The type of workload policy. Possible values: ["HIGH_AVAILABILITY", "HIGH_THROUGHPUT"]
  final pulumi.Input<String> type;

  /// Creates a new [GetResourcePolicyWorkloadPolicy].
  /// [acceleratorTopology] The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [acceleratorTopologyMode] Specifies the connection mode for the accelerator topology.
  /// [maxTopologyDistance] The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [type] The type of workload policy. Possible values: ["HIGH_AVAILABILITY", "HIGH_THROUGHPUT"]
  const GetResourcePolicyWorkloadPolicy({
    required this.acceleratorTopology,
    required this.acceleratorTopologyMode,
    required this.maxTopologyDistance,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTopology': acceleratorTopology,
      'acceleratorTopologyMode': acceleratorTopologyMode,
      'maxTopologyDistance': maxTopologyDistance,
      'type': type,
    };
  }

  factory GetResourcePolicyWorkloadPolicy.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyWorkloadPolicy(
      acceleratorTopology: pulumi.Input.fromValue(map['acceleratorTopology'] as String),
      acceleratorTopologyMode: pulumi.Input.fromValue(map['acceleratorTopologyMode'] as String),
      maxTopologyDistance: pulumi.Input.fromValue(map['maxTopologyDistance'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
