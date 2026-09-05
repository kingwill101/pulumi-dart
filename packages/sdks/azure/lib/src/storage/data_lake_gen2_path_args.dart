// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_gen2_path_ace.dart';

/// {@template pulumi_storage_data_lake_gen2_path_data_lake_gen2_path_args_doc}
/// The set of arguments for DataLakeGen2Path.
/// {@endtemplate}
/// {@macro pulumi_storage_data_lake_gen2_path_data_lake_gen2_path_args_doc}
class DataLakeGen2PathArgs {
  /// One or more `ace` blocks as defined below to specify the entries for the ACL for the path.
  final pulumi.Input<List<DataLakeGen2PathAce>?>? aces;
  /// The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> filesystemName;
  /// Specifies the Object ID of the Azure Active Directory Group to make the owning group. Possible values also include `$superuser`.
  final pulumi.Input<String?>? group;
  /// Specifies the Object ID of the Azure Active Directory User to make the owning user. Possible values also include `$superuser`.
  final pulumi.Input<String?>? owner;
  /// The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> path;
  /// Specifies the type for path to create. Currently only `directory` is supported. Changing this forces a new resource to be created.
  final pulumi.Input<String> resource;
  /// Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [DataLakeGen2PathArgs].
  /// [aces] One or more `ace` blocks as defined below to specify the entries for the ACL for the path.
  /// [filesystemName] The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  /// [group] Specifies the Object ID of the Azure Active Directory Group to make the owning group. Possible values also include `$superuser`.
  /// [owner] Specifies the Object ID of the Azure Active Directory User to make the owning user. Possible values also include `$superuser`.
  /// [path] The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created.
  /// [resource] Specifies the type for path to create. Currently only `directory` is supported. Changing this forces a new resource to be created.
  /// [storageAccountId] Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created.
  const DataLakeGen2PathArgs({
    this.aces,
    required this.filesystemName,
    this.group,
    this.owner,
    required this.path,
    required this.resource,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aces': ?pulumi.Input.mapOptionalInputValue<List<DataLakeGen2PathAce>, List<Map<String, dynamic>>>(aces, (value) => pulumi.Input.encodeList<DataLakeGen2PathAce, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filesystemName': filesystemName,
      'group': ?group,
      'owner': ?owner,
      'path': path,
      'resource': resource,
      'storageAccountId': storageAccountId,
    };
  }

  factory DataLakeGen2PathArgs.fromMap(Map<String, dynamic> map) {
    return DataLakeGen2PathArgs(
      aces: (() { final guardedValue = map['aces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataLakeGen2PathAce>(guardedValue, (value) => DataLakeGen2PathAce.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filesystemName: pulumi.Input.fromValue(map['filesystemName'] as String),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}
