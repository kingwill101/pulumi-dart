// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FieldSelectorRequirement is a selector that contains values, a key, and an operator that relates the key and values.
class FieldSelectorRequirement {
  /// key is the field selector key that the requirement applies to.
  final pulumi.Input<String> key;
  /// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. The list of operators may grow in the future.
  final pulumi.Input<String> operator;
  /// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [FieldSelectorRequirement].
  /// [key] key is the field selector key that the requirement applies to.
  /// [operator] operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. The list of operators may grow in the future.
  /// [values] values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty.
  FieldSelectorRequirement({
    required this.key,
    required this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': ?values,
    };
  }

  factory FieldSelectorRequirement.fromMap(Map<String, dynamic> map) {
    return FieldSelectorRequirement(
      key: (map['key'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

