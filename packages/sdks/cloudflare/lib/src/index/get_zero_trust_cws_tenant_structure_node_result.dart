// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_tenant_structure_node_filter.dart';

/// Result data returned by getZeroTrustCwsTenantStructureNode.
class GetZeroTrustCwsTenantStructureNodeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  final GetZeroTrustCwsTenantStructureNodeFilter? filter;
  /// ID of the node to retrieve
  final String? id;
  /// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  final String? name;
  /// Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  final String? nativeId;
  /// ID of the node to retrieve
  final String? nodeId;
  /// Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  final String? nodeKind;
  /// Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  final String? parent;
  /// ID of the parent tenant structure
  final String? structureId;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsTenantStructureNodeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] ID of the node to retrieve
  /// [name] Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  /// [nativeId] Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  /// [nodeId] ID of the node to retrieve
  /// [nodeKind] Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  /// [parent] Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  /// [structureId] ID of the parent tenant structure
  /// [updatedAt] Optional.
  const GetZeroTrustCwsTenantStructureNodeResult({
    this.accountId,
    this.createdAt,
    this.filter,
    this.id,
    this.name,
    this.nativeId,
    this.nodeId,
    this.nodeKind,
    this.parent,
    this.structureId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'name': ?name,
      'nativeId': ?nativeId,
      'nodeId': ?nodeId,
      'nodeKind': ?nodeKind,
      'parent': ?parent,
      'structureId': ?structureId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsTenantStructureNodeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureNodeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsTenantStructureNodeFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nativeId: (() { final guardedValue = map['nativeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeKind: (() { final guardedValue = map['nodeKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      structureId: (() { final guardedValue = map['structureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
