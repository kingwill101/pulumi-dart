// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsTenantStructureNodesResult {
  final pulumi.Input<String> createdAt;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  final pulumi.Input<String> name;
  /// Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  final pulumi.Input<String> nativeId;
  /// Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  final pulumi.Input<String> nodeKind;
  /// Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  final pulumi.Input<String> parent;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsTenantStructureNodesResult].
  /// [createdAt] Required.
  /// [id] Server-assigned UUID
  /// [name] Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  /// [nativeId] Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  /// [nodeKind] Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  /// [parent] Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  /// [updatedAt] Required.
  const GetZeroTrustCwsTenantStructureNodesResult({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.nativeId,
    required this.nodeKind,
    required this.parent,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'nativeId': nativeId,
      'nodeKind': nodeKind,
      'parent': parent,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsTenantStructureNodesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureNodesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nativeId: pulumi.Input.fromValue(map['nativeId'] as String),
      nodeKind: pulumi.Input.fromValue(map['nodeKind'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
