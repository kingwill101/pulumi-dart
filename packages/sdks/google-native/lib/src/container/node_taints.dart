// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint.dart';

/// Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).
class NodeTaints {
  /// List of node taints.
  final pulumi.Input<List<NodeTaint>>? taints;

  /// Creates a new [NodeTaints].
  /// [taints] List of node taints.
  NodeTaints({
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodeTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodeTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeTaints.fromMap(Map<String, dynamic> map) {
    return NodeTaints(
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeTaint>(guardedValue, (value) => NodeTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

