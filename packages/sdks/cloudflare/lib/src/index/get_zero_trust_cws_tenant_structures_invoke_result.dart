// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_tenant_structures_result.dart';

/// Result data returned by getZeroTrustCwsTenantStructures.
class GetZeroTrustCwsTenantStructuresInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filter by import path (case-sensitive literal substring match)
  final String? importPath;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by tenant structure name (case-insensitive substring match)
  final String? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final String? order;
  /// The items returned by the data source
  final List<GetZeroTrustCwsTenantStructuresResult>? results;

  /// Creates a new [GetZeroTrustCwsTenantStructuresInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [importPath] Filter by import path (case-sensitive literal substring match)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by tenant structure name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [results] The items returned by the data source
  const GetZeroTrustCwsTenantStructuresInvokeResult({
    this.accountId,
    this.direction,
    this.importPath,
    this.maxItems,
    this.name,
    this.order,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'importPath': ?importPath,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsTenantStructuresResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustCwsTenantStructuresInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructuresInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsTenantStructuresResult>(guardedValue, (value) => GetZeroTrustCwsTenantStructuresResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
