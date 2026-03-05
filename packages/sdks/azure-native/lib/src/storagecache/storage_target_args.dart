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
      blobNfs: (() { final guardedValue = map['blobNfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlobNfsTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheName: pulumi.Input.fromValue(map['cacheName'] as String),
      clfs: (() { final guardedValue = map['clfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClfsTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      junctions: (() { final guardedValue = map['junctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceJunction>(guardedValue, (value) => NamespaceJunction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nfs3: (() { final guardedValue = map['nfs3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Nfs3Target.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTargetName: (() { final guardedValue = map['storageTargetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      unknown: (() { final guardedValue = map['unknown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnknownTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

