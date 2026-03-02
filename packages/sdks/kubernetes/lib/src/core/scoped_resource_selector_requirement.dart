// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
class ScopedResourceSelectorRequirement {
  /// Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
  final pulumi.Input<String> operator;
  /// The name of the scope that the selector applies to.
  final pulumi.Input<String> scopeName;
  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ScopedResourceSelectorRequirement].
  /// [operator] Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
  /// [scopeName] The name of the scope that the selector applies to.
  /// [values] An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  ScopedResourceSelectorRequirement({
    required this.operator,
    required this.scopeName,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'scopeName': scopeName,
      'values': ?values,
    };
  }

  factory ScopedResourceSelectorRequirement.fromMap(Map<String, dynamic> map) {
    return ScopedResourceSelectorRequirement(
      operator: (map['operator'] as String).input(),
      scopeName: (map['scopeName'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

