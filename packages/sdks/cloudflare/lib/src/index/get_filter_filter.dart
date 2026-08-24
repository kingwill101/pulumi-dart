// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFilterFilter {
  /// A case-insensitive string to find in the description.
  final pulumi.Input<String?>? description;
  /// A case-insensitive string to find in the expression.
  final pulumi.Input<String?>? expression;
  /// The unique identifier of the filter.
  final pulumi.Input<String?>? id;
  /// When true, indicates that the filter is currently paused.
  final pulumi.Input<bool?>? paused;
  /// The filter ref (a short reference tag) to search for. Must be an exact match.
  final pulumi.Input<String?>? ref;

  /// Creates a new [GetFilterFilter].
  /// [description] A case-insensitive string to find in the description.
  /// [expression] A case-insensitive string to find in the expression.
  /// [id] The unique identifier of the filter.
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] The filter ref (a short reference tag) to search for. Must be an exact match.
  const GetFilterFilter({
    this.description,
    this.expression,
    this.id,
    this.paused,
    this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'id': ?id,
      'paused': ?paused,
      'ref': ?ref,
    };
  }

  factory GetFilterFilter.fromMap(Map<String, dynamic> map) {
    return GetFilterFilter(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
