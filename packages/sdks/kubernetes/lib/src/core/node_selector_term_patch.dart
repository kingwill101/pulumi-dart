// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_requirement_patch.dart';

/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
class NodeSelectorTermPatch {
  /// A list of node selector requirements by node's labels.
  final pulumi.Input<List<NodeSelectorRequirementPatch>>? matchExpressions;
  /// A list of node selector requirements by node's fields.
  final pulumi.Input<List<NodeSelectorRequirementPatch>>? matchFields;

  /// Creates a new [NodeSelectorTermPatch].
  /// [matchExpressions] A list of node selector requirements by node's labels.
  /// [matchFields] A list of node selector requirements by node's fields.
  NodeSelectorTermPatch({
    this.matchExpressions,
    this.matchFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<NodeSelectorRequirementPatch>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<NodeSelectorRequirementPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchFields': ?pulumi.Input.mapOptionalInputValue<List<NodeSelectorRequirementPatch>, List<Map<String, dynamic>>>(matchFields, (value) => pulumi.Input.encodeList<NodeSelectorRequirementPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeSelectorTermPatch.fromMap(Map<String, dynamic> map) {
    return NodeSelectorTermPatch(
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeSelectorRequirementPatch>(guardedValue, (value) => NodeSelectorRequirementPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchFields: (() { final guardedValue = map['matchFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeSelectorRequirementPatch>(guardedValue, (value) => NodeSelectorRequirementPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

