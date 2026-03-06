// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_requirement.dart';

/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
class NodeSelectorTerm {
  /// A list of node selector requirements by node's labels.
  final pulumi.Input<List<NodeSelectorRequirement>>? matchExpressions;
  /// A list of node selector requirements by node's fields.
  final pulumi.Input<List<NodeSelectorRequirement>>? matchFields;

  /// Creates a new [NodeSelectorTerm].
  /// [matchExpressions] A list of node selector requirements by node's labels.
  /// [matchFields] A list of node selector requirements by node's fields.
  const NodeSelectorTerm({
    this.matchExpressions,
    this.matchFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<NodeSelectorRequirement>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<NodeSelectorRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchFields': ?pulumi.Input.mapOptionalInputValue<List<NodeSelectorRequirement>, List<Map<String, dynamic>>>(matchFields, (value) => pulumi.Input.encodeList<NodeSelectorRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeSelectorTerm.fromMap(Map<String, dynamic> map) {
    return NodeSelectorTerm(
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeSelectorRequirement>(guardedValue, (value) => NodeSelectorRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchFields: (() { final guardedValue = map['matchFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeSelectorRequirement>(guardedValue, (value) => NodeSelectorRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

