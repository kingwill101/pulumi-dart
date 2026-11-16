// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbFindingTypeFilter {
  /// Sort direction for the primary field. Defaults to 'desc'.
  /// Ties are resolved by case-insensitive name, then ID, both ascending regardless of direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Return only finding types updated at or before this RFC 3339 timestamp (inclusive).
  final pulumi.Input<String?>? maxUpdatedAt;
  /// Return only finding types updated at or after this RFC 3339 timestamp (inclusive).
  final pulumi.Input<String?>? minUpdatedAt;
  /// Field to sort by (case-insensitive). Defaults to 'created'.
  /// Name and vendor sorting is case-insensitive; vendor uses friendly provider names.
  /// Ascending order: type Content then Posture; origin custom then system;
  /// severity Low, Medium, High, Critical.
  /// Available values: "created", "updated", "matchCount", "name", "vendor", "type", "origin", "severity".
  final pulumi.Input<String?>? order;
  /// Filter finding types by origin. Supports multiple comma-separated, case-insensitive values.
  final pulumi.Input<List<String>?>? origins;
  /// When true, return only quarantined finding types; when false, return only non-quarantined finding types. Omit to return both.
  final pulumi.Input<bool?>? quarantined;
  /// Filter finding types by name or ID (case-insensitive substring match).
  final pulumi.Input<String?>? search;
  /// Filter finding types by severity. Supports multiple comma-separated, case-insensitive values.
  final pulumi.Input<List<String>?>? severities;
  /// Filter finding types by category type. Supports multiple comma-separated, case-insensitive values.
  final pulumi.Input<List<String>?>? types;
  /// Filter finding types by vendor. Supports multiple comma-separated values. Each value may be either the vendor enum (GOOGLE_WORKSPACE) or the friendly name returned by the read routes (Google Workspace).
  final pulumi.Input<List<String>?>? vendors;

  /// Creates a new [GetZeroTrustCasbFindingTypeFilter].
  /// [direction] Sort direction for the primary field. Defaults to 'desc'.
  /// [maxUpdatedAt] Return only finding types updated at or before this RFC 3339 timestamp (inclusive).
  /// [minUpdatedAt] Return only finding types updated at or after this RFC 3339 timestamp (inclusive).
  /// [order] Field to sort by (case-insensitive). Defaults to 'created'.
  /// [origins] Filter finding types by origin. Supports multiple comma-separated, case-insensitive values.
  /// [quarantined] When true, return only quarantined finding types; when false, return only non-quarantined finding types. Omit to return both.
  /// [search] Filter finding types by name or ID (case-insensitive substring match).
  /// [severities] Filter finding types by severity. Supports multiple comma-separated, case-insensitive values.
  /// [types] Filter finding types by category type. Supports multiple comma-separated, case-insensitive values.
  /// [vendors] Filter finding types by vendor. Supports multiple comma-separated values. Each value may be either the vendor enum (GOOGLE_WORKSPACE) or the friendly name returned by the read routes (Google Workspace).
  const GetZeroTrustCasbFindingTypeFilter({
    this.direction,
    this.maxUpdatedAt,
    this.minUpdatedAt,
    this.order,
    this.origins,
    this.quarantined,
    this.search,
    this.severities,
    this.types,
    this.vendors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'maxUpdatedAt': ?maxUpdatedAt,
      'minUpdatedAt': ?minUpdatedAt,
      'order': ?order,
      'origins': ?origins,
      'quarantined': ?quarantined,
      'search': ?search,
      'severities': ?severities,
      'types': ?types,
      'vendors': ?vendors,
    };
  }

  factory GetZeroTrustCasbFindingTypeFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbFindingTypeFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxUpdatedAt: (() { final guardedValue = map['maxUpdatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minUpdatedAt: (() { final guardedValue = map['minUpdatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      quarantined: (() { final guardedValue = map['quarantined']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severities: (() { final guardedValue = map['severities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vendors: (() { final guardedValue = map['vendors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
