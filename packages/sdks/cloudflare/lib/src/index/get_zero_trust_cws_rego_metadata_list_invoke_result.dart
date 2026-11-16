// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_rego_metadata_list_result.dart';

/// Result data returned by getZeroTrustCwsRegoMetadataList.
class GetZeroTrustCwsRegoMetadataListInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filter by import path (case-sensitive literal substring match)
  final String? importPath;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by rego metadata name (case-insensitive substring match)
  final String? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final String? order;
  /// The items returned by the data source
  final List<GetZeroTrustCwsRegoMetadataListResult>? results;

  /// Creates a new [GetZeroTrustCwsRegoMetadataListInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [importPath] Filter by import path (case-sensitive literal substring match)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by rego metadata name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [results] The items returned by the data source
  const GetZeroTrustCwsRegoMetadataListInvokeResult({
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsRegoMetadataListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustCwsRegoMetadataListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoMetadataListInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsRegoMetadataListResult>(guardedValue, (value) => GetZeroTrustCwsRegoMetadataListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
