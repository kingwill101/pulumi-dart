// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_nfs_target.dart';
import 'clfs_target.dart';
import 'namespace_junction.dart';
import 'nfs3_target.dart';
import 'unknown_target.dart';

/// {@template pulumi_storagecache_storage_target_args_doc}
/// The set of arguments for StorageTarget.
/// {@endtemplate}
/// {@macro pulumi_storagecache_storage_target_args_doc}
class StorageTargetArgs {
  /// Properties when targetType is blobNfs.
  final pulumi.Input<BlobNfsTarget>? blobNfs;
  /// Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  final pulumi.Input<String> cacheName;
  /// Properties when targetType is clfs.
  final pulumi.Input<ClfsTarget>? clfs;
  /// List of cache namespace junctions to target for namespace associations.
  final pulumi.Input<List<NamespaceJunction>>? junctions;
  /// Properties when targetType is nfs3.
  final pulumi.Input<Nfs3Target>? nfs3;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Storage target operational state.
  final pulumi.Input<String>? state;
  /// Name of Storage Target.
  final pulumi.Input<String>? storageTargetName;
  /// Type of the Storage Target.
  final pulumi.Input<String> targetType;
  /// Properties when targetType is unknown.
  final pulumi.Input<UnknownTarget>? unknown;

  /// Creates a new [StorageTargetArgs].
  /// [blobNfs] Properties when targetType is blobNfs.
  /// [cacheName] Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  /// [clfs] Properties when targetType is clfs.
  /// [junctions] List of cache namespace junctions to target for namespace associations.
  /// [nfs3] Properties when targetType is nfs3.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [state] Storage target operational state.
  /// [storageTargetName] Name of Storage Target.
  /// [targetType] Type of the Storage Target.
  /// [unknown] Properties when targetType is unknown.
  StorageTargetArgs({
    this.blobNfs,
    required this.cacheName,
    this.clfs,
    this.junctions,
    this.nfs3,
    required this.resourceGroupName,
    this.state,
    this.storageTargetName,
    required this.targetType,
    this.unknown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobNfs': ?pulumi.Input.mapOptionalInputValue<BlobNfsTarget, Map<String, dynamic>>(blobNfs, (value) => value.toMap()),
      'cacheName': cacheName,
      'clfs': ?pulumi.Input.mapOptionalInputValue<ClfsTarget, Map<String, dynamic>>(clfs, (value) => value.toMap()),
      'junctions': ?pulumi.Input.mapOptionalInputValue<List<NamespaceJunction>, List<Map<String, dynamic>>>(junctions, (value) => pulumi.Input.encodeList<NamespaceJunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfs3': ?pulumi.Input.mapOptionalInputValue<Nfs3Target, Map<String, dynamic>>(nfs3, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'storageTargetName': ?storageTargetName,
      'targetType': targetType,
      'unknown': ?pulumi.Input.mapOptionalInputValue<UnknownTarget, Map<String, dynamic>>(unknown, (value) => value.toMap()),
    };
  }

  factory StorageTargetArgs.fromMap(Map<String, dynamic> map) {
    return StorageTargetArgs(
      blobNfs: map['blobNfs'] == null ? null : (BlobNfsTarget.fromMap((map['blobNfs'] as Map).cast<String, dynamic>())).input(),
      cacheName: (map['cacheName'] as String).input(),
      clfs: map['clfs'] == null ? null : (ClfsTarget.fromMap((map['clfs'] as Map).cast<String, dynamic>())).input(),
      junctions: map['junctions'] == null ? null : (pulumi.Input.decodeList<NamespaceJunction>(map['junctions'], (value) => NamespaceJunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nfs3: map['nfs3'] == null ? null : (Nfs3Target.fromMap((map['nfs3'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      storageTargetName: map['storageTargetName'] == null ? null : (map['storageTargetName'] as String).input(),
      targetType: (map['targetType'] as String).input(),
      unknown: map['unknown'] == null ? null : (UnknownTarget.fromMap((map['unknown'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

