// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_acl.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// A mapping of ACLs for this Table.
  final List<GetTableAcl>? acls;
  /// The ID of the Storage Table.
  final String? id;
  final String? name;
  /// The Resource Manager ID of this Storage Table.
  final String? resourceManagerId;
  final String? storageAccountId;
  final String? storageAccountName;

  /// Creates a new [GetTableResult].
  /// [acls] A mapping of ACLs for this Table.
  /// [id] The ID of the Storage Table.
  /// [name] Optional.
  /// [resourceManagerId] The Resource Manager ID of this Storage Table.
  /// [storageAccountId] Optional.
  /// [storageAccountName] Optional.
  const GetTableResult({
    this.acls,
    this.id,
    this.name,
    this.resourceManagerId,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': ?(() { final guardedValue = acls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableAcl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'resourceManagerId': ?resourceManagerId,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      acls: (() { final guardedValue = map['acls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableAcl>(guardedValue, (value) => GetTableAcl.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceManagerId: (() { final guardedValue = map['resourceManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
