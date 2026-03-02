// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the NodeAffinity key, values, and affinity operator according to [shared sole tenant node group affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity).
class NodeAffinityResponse {
  /// Key for NodeAffinity.
  final pulumi.Input<String> key;
  /// Operator for NodeAffinity.
  final pulumi.Input<String> operator;
  /// Values for NodeAffinity.
  final pulumi.Input<List<String>> values;

  /// Creates a new [NodeAffinityResponse].
  /// [key] Key for NodeAffinity.
  /// [operator] Operator for NodeAffinity.
  /// [values] Values for NodeAffinity.
  NodeAffinityResponse({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': values,
    };
  }

  factory NodeAffinityResponse.fromMap(Map<String, dynamic> map) {
    return NodeAffinityResponse(
      key: (map['key'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

