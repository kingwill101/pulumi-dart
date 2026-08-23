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
  const ScopedResourceSelectorRequirement({
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
      operator: pulumi.Input.fromValue(map['operator'] as String),
      scopeName: pulumi.Input.fromValue(map['scopeName'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
