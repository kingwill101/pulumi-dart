// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_filters_result.dart';

/// Result data returned by getFilters.
class GetFiltersInvokeResult {
  /// A case-insensitive string to find in the description.
  final String? description;
  /// A case-insensitive string to find in the expression.
  final String? expression;
  /// The unique identifier of the filter.
  final String? id;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// When true, indicates that the filter is currently paused.
  final bool? paused;
  /// The filter ref (a short reference tag) to search for. Must be an exact match.
  final String? ref;
  /// The items returned by the data source
  final List<GetFiltersResult>? results;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetFiltersInvokeResult].
  /// [description] A case-insensitive string to find in the description.
  /// [expression] A case-insensitive string to find in the expression.
  /// [id] The unique identifier of the filter.
  /// [maxItems] Max items to fetch, default: 1000
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] The filter ref (a short reference tag) to search for. Must be an exact match.
  /// [results] The items returned by the data source
  /// [zoneId] Defines an identifier.
  const GetFiltersInvokeResult({
    this.description,
    this.expression,
    this.id,
    this.maxItems,
    this.paused,
    this.ref,
    this.results,
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFiltersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetFiltersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetFiltersInvokeResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFiltersResult>(guardedValue, (value) => GetFiltersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
