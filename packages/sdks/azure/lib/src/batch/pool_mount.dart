// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_mount_azure_blob_file_system.dart';
import 'pool_mount_azure_file_share.dart';
import 'pool_mount_cifs_mount.dart';
import 'pool_mount_nfs_mount.dart';

class PoolMount {
  /// A `azure_blob_file_system` block defined as below.
  final pulumi.Input<PoolMountAzureBlobFileSystem>? azureBlobFileSystem;
  /// A `azure_file_share` block defined as below.
  final pulumi.Input<List<PoolMountAzureFileShare>>? azureFileShares;
  /// A `cifs_mount` block defined as below.
  final pulumi.Input<List<PoolMountCifsMount>>? cifsMounts;
  /// A `nfs_mount` block defined as below.
  final pulumi.Input<List<PoolMountNfsMount>>? nfsMounts;

  /// Creates a new [PoolMount].
  /// [azureBlobFileSystem] A `azure_blob_file_system` block defined as below.
  /// [azureFileShares] A `azure_file_share` block defined as below.
  /// [cifsMounts] A `cifs_mount` block defined as below.
  /// [nfsMounts] A `nfs_mount` block defined as below.
  PoolMount({
    this.azureBlobFileSystem,
    this.azureFileShares,
    this.cifsMounts,
    this.nfsMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobFileSystem': ?pulumi.Input.mapOptionalInputValue<PoolMountAzureBlobFileSystem, Map<String, dynamic>>(azureBlobFileSystem, (value) => value.toMap()),
      'azureFileShares': ?pulumi.Input.mapOptionalInputValue<List<PoolMountAzureFileShare>, List<Map<String, dynamic>>>(azureFileShares, (value) => pulumi.Input.encodeList<PoolMountAzureFileShare, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cifsMounts': ?pulumi.Input.mapOptionalInputValue<List<PoolMountCifsMount>, List<Map<String, dynamic>>>(cifsMounts, (value) => pulumi.Input.encodeList<PoolMountCifsMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfsMounts': ?pulumi.Input.mapOptionalInputValue<List<PoolMountNfsMount>, List<Map<String, dynamic>>>(nfsMounts, (value) => pulumi.Input.encodeList<PoolMountNfsMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PoolMount.fromMap(Map<String, dynamic> map) {
    return PoolMount(
      azureBlobFileSystem: map['azureBlobFileSystem'] == null ? null : (PoolMountAzureBlobFileSystem.fromMap((map['azureBlobFileSystem']! as Map).cast<String, dynamic>())).input(),
      azureFileShares: map['azureFileShares'] == null ? null : (pulumi.Input.decodeList<PoolMountAzureFileShare>(map['azureFileShares']!, (value) => PoolMountAzureFileShare.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cifsMounts: map['cifsMounts'] == null ? null : (pulumi.Input.decodeList<PoolMountCifsMount>(map['cifsMounts']!, (value) => PoolMountCifsMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nfsMounts: map['nfsMounts'] == null ? null : (pulumi.Input.decodeList<PoolMountNfsMount>(map['nfsMounts']!, (value) => PoolMountNfsMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

