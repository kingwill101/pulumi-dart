// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_finding_types_result.dart';

/// Result data returned by getZeroTrustCasbFindingTypes.
class GetZeroTrustCasbFindingTypesInvokeResult {
  final String? accountId;
  /// Sort direction for the primary field. Defaults to 'desc'.
  /// Ties are resolved by case-insensitive name, then ID, both ascending regardless of direction.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Return only finding types updated at or before this RFC 3339 timestamp (inclusive).
  final String? maxUpdatedAt;
  /// Return only finding types updated at or after this RFC 3339 timestamp (inclusive).
  final String? minUpdatedAt;
  /// Field to sort by (case-insensitive). Defaults to 'created'.
  /// Name and vendor sorting is case-insensitive; vendor uses friendly provider names.
  /// Ascending order: type Content then Posture; origin custom then system;
  /// severity Low, Medium, High, Critical.
  /// Available values: "created", "updated", "matchCount", "name", "vendor", "type", "origin", "severity".
  final String? order;
  /// Filter finding types by origin. Supports multiple comma-separated, case-insensitive values.
  final List<String>? origins;
  /// When true, return only quarantined finding types; when false, return only non-quarantined finding types. Omit to return both.
  final bool? quarantined;
  /// The items returned by the data source
  final List<GetZeroTrustCasbFindingTypesResult>? results;
  /// Filter finding types by name or ID (case-insensitive substring match).
  final String? search;
  /// Filter finding types by severity. Supports multiple comma-separated, case-insensitive values.
  final List<String>? severities;
  /// Filter finding types by category type. Supports multiple comma-separated, case-insensitive values.
  final List<String>? types;
  /// Filter finding types by vendor. Supports multiple comma-separated values. Each value may be either the vendor enum (GOOGLE_WORKSPACE) or the friendly name returned by the read routes (Google Workspace).
  final List<String>? vendors;

  /// Creates a new [GetZeroTrustCasbFindingTypesInvokeResult].
  /// [accountId] Optional.
  /// [direction] Sort direction for the primary field. Defaults to 'desc'.
  /// [maxItems] Max items to fetch, default: 1000
  /// [maxUpdatedAt] Return only finding types updated at or before this RFC 3339 timestamp (inclusive).
  /// [minUpdatedAt] Return only finding types updated at or after this RFC 3339 timestamp (inclusive).
  /// [order] Field to sort by (case-insensitive). Defaults to 'created'.
  /// [origins] Filter finding types by origin. Supports multiple comma-separated, case-insensitive values.
  /// [quarantined] When true, return only quarantined finding types; when false, return only non-quarantined finding types. Omit to return both.
  /// [results] The items returned by the data source
  /// [search] Filter finding types by name or ID (case-insensitive substring match).
  /// [severities] Filter finding types by severity. Supports multiple comma-separated, case-insensitive values.
  /// [types] Filter finding types by category type. Supports multiple comma-separated, case-insensitive values.
  /// [vendors] Filter finding types by vendor. Supports multiple comma-separated values. Each value may be either the vendor enum (GOOGLE_WORKSPACE) or the friendly name returned by the read routes (Google Workspace).
  const GetZeroTrustCasbFindingTypesInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.maxUpdatedAt,
    this.minUpdatedAt,
    this.order,
    this.origins,
    this.quarantined,
    this.results,
    this.search,
    this.severities,
    this.types,
    this.vendors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'maxUpdatedAt': ?maxUpdatedAt,
      'minUpdatedAt': ?minUpdatedAt,
      'order': ?order,
      'origins': ?origins,
      'quarantined': ?quarantined,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCasbFindingTypesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'severities': ?severities,
      'types': ?types,
      'vendors': ?vendors,
    };
  }

  factory GetZeroTrustCasbFindingTypesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbFindingTypesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxUpdatedAt: (() { final guardedValue = map['maxUpdatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minUpdatedAt: (() { final guardedValue = map['minUpdatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      quarantined: (() { final guardedValue = map['quarantined']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCasbFindingTypesResult>(guardedValue, (value) => GetZeroTrustCasbFindingTypesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      severities: (() { final guardedValue = map['severities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vendors: (() { final guardedValue = map['vendors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
