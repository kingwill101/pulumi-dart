// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_acl.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// One or more `acl` blocks as defined below.
  final pulumi.Input<List<TableAcl>>? acls;
  /// The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Resource Manager ID of this Storage Table.
  final pulumi.Input<String>? resourceManagerId;
  /// Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [TableState].
  /// [acls] One or more `acl` blocks as defined below.
  /// [name] The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created.
  /// [resourceManagerId] The Resource Manager ID of this Storage Table.
  /// [storageAccountName] Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created.
  TableState({
    pulumi.Output<List<TableAcl>>? acls,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceManagerId,
    pulumi.Output<String>? storageAccountName,
  }) :
      acls = pulumi.Input.asOptionalInput<List<TableAcl>>(acls),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceManagerId = pulumi.Input.asOptionalInput<String>(resourceManagerId),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': ?pulumi.Input.mapOptionalInputValue<List<TableAcl>, List<Map<String, dynamic>>>(acls, (value) => pulumi.Input.encodeList<TableAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceManagerId': ?resourceManagerId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      acls: map['acls'] == null ? null : pulumi.Output.create<List<TableAcl>>(pulumi.Input.decodeList<TableAcl>(map['acls'], (value) => TableAcl.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceManagerId: map['resourceManagerId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerId'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
    );
  }
}

