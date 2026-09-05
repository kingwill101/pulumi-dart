// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_gen2_filesystem_ace.dart';

/// {@template pulumi_storage_data_lake_gen2_filesystem_data_lake_gen2_filesystem_args_doc}
/// The set of arguments for DataLakeGen2Filesystem.
/// {@endtemplate}
/// {@macro pulumi_storage_data_lake_gen2_filesystem_data_lake_gen2_filesystem_args_doc}
class DataLakeGen2FilesystemArgs {
  /// One or more `ace` blocks as defined below to specify the entries for the ACL for the path.
  final pulumi.Input<List<DataLakeGen2FilesystemAce>?>? aces;
  /// The default encryption scope to use for this filesystem. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? defaultEncryptionScope;
  /// Specifies the Object ID of the Azure Active Directory Group to make the owning group of the root path (i.e. `/`). Possible values also include `$superuser`.
  ///
  /// &gt; **Note:** The Storage Account requires `accountKind` to be either `StorageV2` or `BlobStorage`. In addition, `isHnsEnabled` has to be set to `true`.
  final pulumi.Input<String?>? group;
  /// The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the Object ID of the Azure Active Directory User to make the owning user of the root path (i.e. `/`). Possible values also include `$superuser`.
  final pulumi.Input<String?>? owner;
  /// A mapping of Key to Base64-Encoded Values which should be assigned to this Data Lake Gen2 File System.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [DataLakeGen2FilesystemArgs].
  /// [aces] One or more `ace` blocks as defined below to specify the entries for the ACL for the path.
  /// [defaultEncryptionScope] The default encryption scope to use for this filesystem. Changing this forces a new resource to be created.
  /// [group] Specifies the Object ID of the Azure Active Directory Group to make the owning group of the root path (i.e. `/`). Possible values also include `$superuser`.
  /// [name] The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  /// [owner] Specifies the Object ID of the Azure Active Directory User to make the owning user of the root path (i.e. `/`). Possible values also include `$superuser`.
  /// [properties] A mapping of Key to Base64-Encoded Values which should be assigned to this Data Lake Gen2 File System.
  /// [storageAccountId] Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
  const DataLakeGen2FilesystemArgs({
    this.aces,
    this.defaultEncryptionScope,
    this.group,
    this.name,
    this.owner,
    this.properties,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aces': ?pulumi.Input.mapOptionalInputValue<List<DataLakeGen2FilesystemAce>, List<Map<String, dynamic>>>(aces, (value) => pulumi.Input.encodeList<DataLakeGen2FilesystemAce, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultEncryptionScope': ?defaultEncryptionScope,
      'group': ?group,
      'name': ?name,
      'owner': ?owner,
      'properties': ?properties,
      'storageAccountId': storageAccountId,
    };
  }

  factory DataLakeGen2FilesystemArgs.fromMap(Map<String, dynamic> map) {
    return DataLakeGen2FilesystemArgs(
      aces: (() { final guardedValue = map['aces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataLakeGen2FilesystemAce>(guardedValue, (value) => DataLakeGen2FilesystemAce.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultEncryptionScope: (() { final guardedValue = map['defaultEncryptionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}
