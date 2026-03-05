// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicyWorkloadPolicy {
  /// The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if max topology distance is set.
  final pulumi.Input<String> acceleratorTopology;
  /// The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if accelerator topology is set. Possible values: ["BLOCK", "CLUSTER", "SUBBLOCK"]
  final pulumi.Input<String> maxTopologyDistance;
  /// The type of workload policy. Possible values: ["HIGH_AVAILABILITY", "HIGH_THROUGHPUT"]
  final pulumi.Input<String> type;

  /// Creates a new [GetResourcePolicyWorkloadPolicy].
  /// [acceleratorTopology] The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [maxTopologyDistance] The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [type] The type of workload policy. Possible values: ["HIGH_AVAILABILITY", "HIGH_THROUGHPUT"]
  GetResourcePolicyWorkloadPolicy({
    required this.acceleratorTopology,
    required this.maxTopologyDistance,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTopology': acceleratorTopology,
      'maxTopologyDistance': maxTopologyDistance,
      'type': type,
    };
  }

  factory GetResourcePolicyWorkloadPolicy.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyWorkloadPolicy(
      acceleratorTopology: pulumi.Input.fromValue(map['acceleratorTopology'] as String),
      maxTopologyDistance: pulumi.Input.fromValue(map['maxTopologyDistance'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

