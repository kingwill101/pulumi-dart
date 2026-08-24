// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_filters_get_filters_args_doc}
/// Arguments for getFilters.
/// {@endtemplate}
/// {@macro pulumi_index_get_filters_get_filters_args_doc}
class GetFiltersArgs {
  /// A case-insensitive string to find in the description.
  final pulumi.Input<String?>? description;
  /// A case-insensitive string to find in the expression.
  final pulumi.Input<String?>? expression;
  /// The unique identifier of the filter.
  final pulumi.Input<String?>? id;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// When true, indicates that the filter is currently paused.
  final pulumi.Input<bool?>? paused;
  /// The filter ref (a short reference tag) to search for. Must be an exact match.
  final pulumi.Input<String?>? ref;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetFiltersArgs].
  /// [description] A case-insensitive string to find in the description.
  /// [expression] A case-insensitive string to find in the expression.
  /// [id] The unique identifier of the filter.
  /// [maxItems] Max items to fetch, default: 1000
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] The filter ref (a short reference tag) to search for. Must be an exact match.
  /// [zoneId] Defines an identifier.
  const GetFiltersArgs({
    this.description,
    this.expression,
    this.id,
    this.maxItems,
    this.paused,
    this.ref,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'id': ?id,
      'maxItems': ?maxItems,
      'paused': ?paused,
      'ref': ?ref,
      'zoneId': ?zoneId,
    };
  }

  factory GetFiltersArgs.fromMap(Map<String, dynamic> map) {
    return GetFiltersArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
