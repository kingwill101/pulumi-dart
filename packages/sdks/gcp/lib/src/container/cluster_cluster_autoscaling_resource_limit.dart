// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterAutoscalingResourceLimit {
  /// Maximum amount of the resource in the cluster.
  final pulumi.Input<int> maximum;
  /// Minimum amount of the resource in the cluster.
  final pulumi.Input<int>? minimum;
  /// The type of the resource. For example, `cpu` and
  /// `memory`.  See the [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for a list of types.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ClusterClusterAutoscalingResourceLimit].
  /// [maximum] Maximum amount of the resource in the cluster.
  /// [minimum] Minimum amount of the resource in the cluster.
  /// [resourceType] The type of the resource. For example, `cpu` and
  const ClusterClusterAutoscalingResourceLimit({
    required this.maximum,
    this.minimum,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': maximum,
      'minimum': ?minimum,
      'resourceType': resourceType,
    };
  }

  factory ClusterClusterAutoscalingResourceLimit.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscalingResourceLimit(
      maximum: pulumi.Input.fromValue(map['maximum'] as int),
      minimum: (() { final guardedValue = map['minimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
