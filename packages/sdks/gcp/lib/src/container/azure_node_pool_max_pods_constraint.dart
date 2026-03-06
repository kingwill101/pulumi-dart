// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureNodePoolMaxPodsConstraint {
  /// The maximum number of pods to schedule on a single node.
  ///
  /// - - -
  final pulumi.Input<int> maxPodsPerNode;

  /// Creates a new [AzureNodePoolMaxPodsConstraint].
  /// [maxPodsPerNode] The maximum number of pods to schedule on a single node.
  const AzureNodePoolMaxPodsConstraint({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': maxPodsPerNode,
    };
  }

  factory AzureNodePoolMaxPodsConstraint.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolMaxPodsConstraint(
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as int),
    );
  }
}

