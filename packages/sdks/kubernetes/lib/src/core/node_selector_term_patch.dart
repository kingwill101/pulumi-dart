// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_requirement_patch.dart';

/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
class NodeSelectorTermPatch {
  /// A list of node selector requirements by node's labels.
  final List<NodeSelectorRequirementPatch>? matchExpressions;
  /// A list of node selector requirements by node's fields.
  final List<NodeSelectorRequirementPatch>? matchFields;

  /// Creates a new [NodeSelectorTermPatch].
  /// [matchExpressions] A list of node selector requirements by node's labels.
  /// [matchFields] A list of node selector requirements by node's fields.
  NodeSelectorTermPatch({
    this.matchExpressions,
    this.matchFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?matchExpressions == null ? null : pulumi.Input.encodeList<NodeSelectorRequirementPatch, Map<String, dynamic>>(matchExpressions!, (value) => value.toMap()),
      'matchFields': ?matchFields == null ? null : pulumi.Input.encodeList<NodeSelectorRequirementPatch, Map<String, dynamic>>(matchFields!, (value) => value.toMap()),
    };
  }

  factory NodeSelectorTermPatch.fromMap(Map<String, dynamic> map) {
    return NodeSelectorTermPatch(
      matchExpressions: map['matchExpressions'] == null ? null : pulumi.Input.decodeList<NodeSelectorRequirementPatch>(map['matchExpressions'], (value) => NodeSelectorRequirementPatch.fromMap((value as Map).cast<String, dynamic>())),
      matchFields: map['matchFields'] == null ? null : pulumi.Input.decodeList<NodeSelectorRequirementPatch>(map['matchFields'], (value) => NodeSelectorRequirementPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

