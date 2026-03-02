// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class NodeSelectorRequirementPatch {
  /// The label key that the selector applies to.
  final pulumi.Input<String>? key;
  /// Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
  final pulumi.Input<String>? operator;
  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [NodeSelectorRequirementPatch].
  /// [key] The label key that the selector applies to.
  /// [operator] Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
  /// [values] An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  NodeSelectorRequirementPatch({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory NodeSelectorRequirementPatch.fromMap(Map<String, dynamic> map) {
    return NodeSelectorRequirementPatch(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

