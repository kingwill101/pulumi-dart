// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_term_patch.dart';

/// A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
class NodeSelectorPatch {
  /// Required. A list of node selector terms. The terms are ORed.
  final List<NodeSelectorTermPatch>? nodeSelectorTerms;

  /// Creates a new [NodeSelectorPatch].
  /// [nodeSelectorTerms] Required. A list of node selector terms. The terms are ORed.
  NodeSelectorPatch({
    this.nodeSelectorTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSelectorTerms': ?nodeSelectorTerms == null ? null : pulumi.Input.encodeList<NodeSelectorTermPatch, Map<String, dynamic>>(nodeSelectorTerms!, (value) => value.toMap()),
    };
  }

  factory NodeSelectorPatch.fromMap(Map<String, dynamic> map) {
    return NodeSelectorPatch(
      nodeSelectorTerms: map['nodeSelectorTerms'] == null ? null : pulumi.Input.decodeList<NodeSelectorTermPatch>(map['nodeSelectorTerms'], (value) => NodeSelectorTermPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

