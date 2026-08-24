// ignore_for_file: unused_element, unnecessary_cast

import 'get_filter_filter.dart';

/// Result data returned by getFilter.
class GetFilterResult {
  /// An informative summary of the filter.
  final String? description;
  /// The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  final String? expression;
  final GetFilterFilter? filter;
  /// The unique identifier of the filter.
  final String? filterId;
  /// The unique identifier of the filter.
  final String? id;
  /// When true, indicates that the filter is currently paused.
  final bool? paused;
  /// A short reference tag. Allows you to select related filters.
  final String? ref;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetFilterResult].
  /// [description] An informative summary of the filter.
  /// [expression] The filter expression. For more information, refer to [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
  /// [filter] Optional.
  /// [filterId] The unique identifier of the filter.
  /// [id] The unique identifier of the filter.
  /// [paused] When true, indicates that the filter is currently paused.
  /// [ref] A short reference tag. Allows you to select related filters.
  /// [zoneId] Defines an identifier.
  const GetFilterResult({
    this.description,
    this.expression,
    this.filter,
    this.filterId,
    this.id,
    this.paused,
    this.ref,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'filter': ?filter?.toMap(),
      'filterId': ?filterId,
      'id': ?id,
      'paused': ?paused,
      'ref': ?ref,
      'zoneId': ?zoneId,
    };
  }

  factory GetFilterResult.fromMap(Map<String, dynamic> map) {
    return GetFilterResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetFilterFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filterId: (() { final guardedValue = map['filterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
