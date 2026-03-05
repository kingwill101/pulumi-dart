// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_acl.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// A mapping of ACLs for this Table.
  final List<GetTableAcl> acls;
  /// The ID of the Storage Table.
  final String id;
  final String name;
  /// The Resource Manager ID of this Storage Table.
  final String resourceManagerId;
  final String storageAccountName;

  /// Creates a new [GetTableResult].
  /// [acls] A mapping of ACLs for this Table.
  /// [id] The ID of the Storage Table.
  /// [name] Required.
  /// [resourceManagerId] The Resource Manager ID of this Storage Table.
  /// [storageAccountName] Required.
  GetTableResult({
    required this.acls,
    required this.id,
    required this.name,
    required this.resourceManagerId,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': pulumi.Input.encodeList<GetTableAcl, Map<String, dynamic>>(acls, (value) => value.toMap()),
      'id': id,
      'name': name,
      'resourceManagerId': resourceManagerId,
      'storageAccountName': storageAccountName,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      acls: pulumi.Input.decodeList<GetTableAcl>(map['acls']!, (value) => GetTableAcl.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      resourceManagerId: map['resourceManagerId'] as String,
      storageAccountName: map['storageAccountName'] as String,
    );
  }
}

