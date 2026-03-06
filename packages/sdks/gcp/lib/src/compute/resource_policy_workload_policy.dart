// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyWorkloadPolicy {
  /// The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if max topology distance is set.
  final pulumi.Input<String>? acceleratorTopology;
  /// The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// and cannot be set if accelerator topology is set.
  /// Possible values are: `BLOCK`, `CLUSTER`, `SUBBLOCK`.
  final pulumi.Input<String>? maxTopologyDistance;
  /// The type of workload policy.
  /// Possible values are: `HIGH_AVAILABILITY`, `HIGH_THROUGHPUT`.
  final pulumi.Input<String> type;

  /// Creates a new [ResourcePolicyWorkloadPolicy].
  /// [acceleratorTopology] The accelerator topology. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [maxTopologyDistance] The maximum topology distance. This field can be set only when the workload policy type is HIGH_THROUGHPUT
  /// [type] The type of workload policy.
  const ResourcePolicyWorkloadPolicy({
    this.acceleratorTopology,
    this.maxTopologyDistance,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTopology': ?acceleratorTopology,
      'maxTopologyDistance': ?maxTopologyDistance,
      'type': type,
    };
  }

  factory ResourcePolicyWorkloadPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWorkloadPolicy(
      acceleratorTopology: (() { final guardedValue = map['acceleratorTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTopologyDistance: (() { final guardedValue = map['maxTopologyDistance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

