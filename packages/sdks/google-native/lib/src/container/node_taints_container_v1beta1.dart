// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint_container_v1beta1.dart';

/// Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).
class NodeTaintsContainerV1beta1 {
  /// List of node taints.
  final pulumi.Input<List<NodeTaintContainerV1beta1>>? taints;

  /// Creates a new [NodeTaintsContainerV1beta1].
  /// [taints] List of node taints.
  NodeTaintsContainerV1beta1({
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodeTaintContainerV1beta1>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodeTaintContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeTaintsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeTaintsContainerV1beta1(
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<NodeTaintContainerV1beta1>(map['taints'], (value) => NodeTaintContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

