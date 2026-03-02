// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission.dart';
import 'principal.dart';

class RbacPolicy {
  /// Name of the RbacPolicy.
  final pulumi.Input<String>? name;
  /// The list of permissions.
  final pulumi.Input<List<Permission>>? permissions;
  /// The list of principals.
  final pulumi.Input<List<Principal>>? principals;

  /// Creates a new [RbacPolicy].
  /// [name] Name of the RbacPolicy.
  /// [permissions] The list of permissions.
  /// [principals] The list of principals.
  RbacPolicy({
    this.name,
    this.permissions,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<Permission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<Permission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': ?pulumi.Input.mapOptionalInputValue<List<Principal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<Principal, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RbacPolicy.fromMap(Map<String, dynamic> map) {
    return RbacPolicy(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      permissions: map['permissions'] == null ? null : (pulumi.Input.decodeList<Permission>(map['permissions'], (value) => Permission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      principals: map['principals'] == null ? null : (pulumi.Input.decodeList<Principal>(map['principals'], (value) => Principal.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

