// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsTenantStructureNode resources.
class ZeroTrustCwsTenantStructureNodeState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  final pulumi.Input<String?>? name;
  /// Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  final pulumi.Input<String?>? nativeId;
  /// Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  final pulumi.Input<String?>? nodeKind;
  /// Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  final pulumi.Input<String?>? parent;
  /// ID of the parent tenant structure
  final pulumi.Input<String?>? structureId;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsTenantStructureNodeState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [name] Display name (e.g. an OU or account name), mutable. Optional; empty by default.
  /// [nativeId] Cloud-native identifier of this node, unique within the structure; the parent-reference target. Shape depends on the structure's application. Immutable after create.
  /// [nodeKind] Position in the tree. Legal values depend on the structure's application (aws: root/ou/account; cloudflare: org/account/zone). At most one root per structure. Immutable after create.
  /// [parent] Native ID of this node's parent. Required for non-root nodes and omitted for the root. The parent must be in the same structure and able to contain this node kind.
  /// [structureId] ID of the parent tenant structure
  /// [updatedAt] Optional.
  const ZeroTrustCwsTenantStructureNodeState({
    this.accountId,
    this.createdAt,
    this.name,
    this.nativeId,
    this.nodeKind,
    this.parent,
    this.structureId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'name': ?name,
      'nativeId': ?nativeId,
      'nodeKind': ?nodeKind,
      'parent': ?parent,
      'structureId': ?structureId,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsTenantStructureNodeState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsTenantStructureNodeState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nativeId: (() { final guardedValue = map['nativeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeKind: (() { final guardedValue = map['nodeKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structureId: (() { final guardedValue = map['structureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
