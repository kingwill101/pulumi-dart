// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'role.dart';

/// RoleList is a collection of Roles
class RoleList {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Items is a list of Roles
  final List<Role> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata.
  final ListMeta? metadata;

  /// Creates a new [RoleList].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is a list of Roles
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  RoleList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.encodeList<Role, Map<String, dynamic>>(items, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory RoleList.fromMap(Map<String, dynamic> map) {
    return RoleList(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: pulumi.Input.decodeList<Role>(map['items'], (value) => Role.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

