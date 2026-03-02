// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of node-level [Kubernetes labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels).
class NodeLabelsContainerV1beta1 {
  /// Map of node label keys and node label values.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [NodeLabelsContainerV1beta1].
  /// [labels] Map of node label keys and node label values.
  NodeLabelsContainerV1beta1({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory NodeLabelsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeLabelsContainerV1beta1(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
    );
  }
}

