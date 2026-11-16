// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_tenant_structure_node_zero_trust_cws_tenant_structure_node_args_doc}
/// The set of arguments for ZeroTrustCwsTenantStructureNode.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_tenant_structure_node_zero_trust_cws_tenant_structure_node_args_doc}
class ZeroTrustCwsTenantStructureNodeArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  final pulumi.Input<String?>? name;
  /// Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  final pulumi.Input<String> nativeId;
  /// Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  final pulumi.Input<String> nodeKind;
  /// Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  final pulumi.Input<String?>? parent;
  /// ID of the parent tenant structure
  final pulumi.Input<String> structureId;

  /// Creates a new [ZeroTrustCwsTenantStructureNodeArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [name] Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  /// [nativeId] Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  /// [nodeKind] Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  /// [parent] Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  /// [structureId] ID of the parent tenant structure
  const ZeroTrustCwsTenantStructureNodeArgs({
    required this.accountId,
    this.name,
    required this.nativeId,
    required this.nodeKind,
    this.parent,
    required this.structureId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': ?name,
      'nativeId': nativeId,
      'nodeKind': nodeKind,
      'parent': ?parent,
      'structureId': structureId,
    };
  }

  factory ZeroTrustCwsTenantStructureNodeArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsTenantStructureNodeArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nativeId: pulumi.Input.fromValue(map['nativeId'] as String),
      nodeKind: pulumi.Input.fromValue(map['nodeKind'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structureId: pulumi.Input.fromValue(map['structureId'] as String),
    );
  }
}
