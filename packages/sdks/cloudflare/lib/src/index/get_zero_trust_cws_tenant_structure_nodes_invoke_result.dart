// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_tenant_structure_nodes_result.dart';

/// Result data returned by getZeroTrustCwsTenantStructureNodes.
class GetZeroTrustCwsTenantStructureNodesInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by node name (case-insensitive substring match)
  final String? name;
  /// Filter by exact cloud-native identifier
  final String? nativeId;
  /// Filter by exact node kind
  final String? nodeKind;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final String? order;
  /// Filter by exact parent native ID
  final String? parent;
  /// The items returned by the data source
  final List<GetZeroTrustCwsTenantStructureNodesResult>? results;
  /// ID of the parent tenant structure
  final String? structureId;

  /// Creates a new [GetZeroTrustCwsTenantStructureNodesInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by node name (case-insensitive substring match)
  /// [nativeId] Filter by exact cloud-native identifier
  /// [nodeKind] Filter by exact node kind
  /// [order] Field to order results by (default: created*at)
  /// [parent] Filter by exact parent native ID
  /// [results] The items returned by the data source
  /// [structureId] ID of the parent tenant structure
  const GetZeroTrustCwsTenantStructureNodesInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.name,
    this.nativeId,
    this.nodeKind,
    this.order,
    this.parent,
    this.results,
    this.structureId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'nativeId': ?nativeId,
      'nodeKind': ?nodeKind,
      'order': ?order,
      'parent': ?parent,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsTenantStructureNodesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'structureId': ?structureId,
    };
  }

  factory GetZeroTrustCwsTenantStructureNodesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureNodesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nativeId: (() { final guardedValue = map['nativeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeKind: (() { final guardedValue = map['nodeKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsTenantStructureNodesResult>(guardedValue, (value) => GetZeroTrustCwsTenantStructureNodesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      structureId: (() { final guardedValue = map['structureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
