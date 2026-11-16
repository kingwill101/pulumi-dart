// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_cws_tenant_structure_nodes_get_zero_trust_cws_tenant_structure_nodes_args_doc}
/// Arguments for getZeroTrustCwsTenantStructureNodes.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_tenant_structure_nodes_get_zero_trust_cws_tenant_structure_nodes_args_doc}
class GetZeroTrustCwsTenantStructureNodesArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by node name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Filter by exact cloud-native identifier
  final pulumi.Input<String?>? nativeId;
  /// Filter by exact node kind
  final pulumi.Input<String?>? nodeKind;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String?>? order;
  /// Filter by exact parent native ID
  final pulumi.Input<String?>? parent;
  /// ID of the parent tenant structure
  final pulumi.Input<String> structureId;

  /// Creates a new [GetZeroTrustCwsTenantStructureNodesArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by node name (case-insensitive substring match)
  /// [nativeId] Filter by exact cloud-native identifier
  /// [nodeKind] Filter by exact node kind
  /// [order] Field to order results by (default: created*at)
  /// [parent] Filter by exact parent native ID
  /// [structureId] ID of the parent tenant structure
  const GetZeroTrustCwsTenantStructureNodesArgs({
    required this.accountId,
    this.direction,
    this.maxItems,
    this.name,
    this.nativeId,
    this.nodeKind,
    this.order,
    this.parent,
    required this.structureId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'nativeId': ?nativeId,
      'nodeKind': ?nodeKind,
      'order': ?order,
      'parent': ?parent,
      'structureId': structureId,
    };
  }

  factory GetZeroTrustCwsTenantStructureNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureNodesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nativeId: (() { final guardedValue = map['nativeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeKind: (() { final guardedValue = map['nodeKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structureId: pulumi.Input.fromValue(map['structureId'] as String),
    );
  }
}
