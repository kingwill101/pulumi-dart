// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_acl.dart';

/// {@template pulumi_storage_table_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_storage_table_table_args_doc}
class TableArgs {
  /// One or more `acl` blocks as defined below.
  final pulumi.Input<List<TableAcl>>? acls;
  /// The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [TableArgs].
  /// [acls] One or more `acl` blocks as defined below.
  /// [name] The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created.
  /// [storageAccountName] Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created.
  TableArgs({
    this.acls,
    this.name,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': ?pulumi.Input.mapOptionalInputValue<List<TableAcl>, List<Map<String, dynamic>>>(acls, (value) => pulumi.Input.encodeList<TableAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'storageAccountName': storageAccountName,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      acls: (() { final guardedValue = map['acls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableAcl>(guardedValue, (value) => TableAcl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
    );
  }
}

