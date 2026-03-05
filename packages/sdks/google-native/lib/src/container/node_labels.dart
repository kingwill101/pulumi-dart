// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of node-level [Kubernetes labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels).
class NodeLabels {
  /// Map of node label keys and node label values.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [NodeLabels].
  /// [labels] Map of node label keys and node label values.
  NodeLabels({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory NodeLabels.fromMap(Map<String, dynamic> map) {
    return NodeLabels(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

