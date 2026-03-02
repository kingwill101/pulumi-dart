// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterClusterAutoscalingResourceLimit {
  /// Maximum amount of the resource in the cluster.
  final pulumi.Input<int> maximum;
  /// Minimum amount of the resource in the cluster.
  final pulumi.Input<int> minimum;
  /// The type of the resource. For example, cpu and memory. See the guide to using Node Auto-Provisioning for a list of types.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetClusterClusterAutoscalingResourceLimit].
  /// [maximum] Maximum amount of the resource in the cluster.
  /// [minimum] Minimum amount of the resource in the cluster.
  /// [resourceType] The type of the resource. For example, cpu and memory. See the guide to using Node Auto-Provisioning for a list of types.
  GetClusterClusterAutoscalingResourceLimit({
    required this.maximum,
    required this.minimum,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': maximum,
      'minimum': minimum,
      'resourceType': resourceType,
    };
  }

  factory GetClusterClusterAutoscalingResourceLimit.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingResourceLimit(
      maximum: (map['maximum'] as int).input(),
      minimum: (map['minimum'] as int).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

