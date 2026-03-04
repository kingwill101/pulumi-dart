// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_term.dart';

/// A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
class NodeSelector {
  /// Required. A list of node selector terms. The terms are ORed.
  final pulumi.Input<List<NodeSelectorTerm>> nodeSelectorTerms;

  /// Creates a new [NodeSelector].
  /// [nodeSelectorTerms] Required. A list of node selector terms. The terms are ORed.
  NodeSelector({required this.nodeSelectorTerms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSelectorTerms':
          pulumi.Input.mapInputValue<
            List<NodeSelectorTerm>,
            List<Map<String, dynamic>>
          >(
            nodeSelectorTerms,
            (value) =>
                pulumi.Input.encodeList<NodeSelectorTerm, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory NodeSelector.fromMap(Map<String, dynamic> map) {
    return NodeSelector(
      nodeSelectorTerms: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NodeSelectorTerm>(
          map['nodeSelectorTerms']!,
          (value) =>
              NodeSelectorTerm.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
