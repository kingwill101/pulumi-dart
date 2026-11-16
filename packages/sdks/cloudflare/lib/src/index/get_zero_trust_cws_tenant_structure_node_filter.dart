// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsTenantStructureNodeFilter {
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filter by node name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Filter by exact cloud-native identifier
  final pulumi.Input<String?>? nativeId;
  /// Filter by exact node kind
  final pulumi.Input<String?>? nodeKind;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String> order;
  /// Filter by exact parent native ID
  final pulumi.Input<String?>? parent;

  /// Creates a new [GetZeroTrustCwsTenantStructureNodeFilter].
  /// [direction] Sort direction (default: asc)
  /// [name] Filter by node name (case-insensitive substring match)
  /// [nativeId] Filter by exact cloud-native identifier
  /// [nodeKind] Filter by exact node kind
  /// [order] Field to order results by (default: created*at)
  /// [parent] Filter by exact parent native ID
  const GetZeroTrustCwsTenantStructureNodeFilter({
    required this.direction,
    this.name,
    this.nativeId,
    this.nodeKind,
    required this.order,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': ?name,
      'nativeId': ?nativeId,
      'nodeKind': ?nodeKind,
      'order': order,
      'parent': ?parent,
    };
  }

  factory GetZeroTrustCwsTenantStructureNodeFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureNodeFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nativeId: (() { final guardedValue = map['nativeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeKind: (() { final guardedValue = map['nodeKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
