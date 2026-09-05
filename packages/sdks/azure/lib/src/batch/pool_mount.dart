// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_mount_azure_blob_file_system.dart';
import 'pool_mount_azure_file_share.dart';
import 'pool_mount_cifs_mount.dart';
import 'pool_mount_nfs_mount.dart';

class PoolMount {
  /// A `azureBlobFileSystem` block defined as below.
  final pulumi.Input<PoolMountAzureBlobFileSystem?>? azureBlobFileSystem;
  /// A `azureFileShare` block defined as below.
  final pulumi.Input<List<PoolMountAzureFileShare>?>? azureFileShares;
  /// A `cifsMount` block defined as below.
  final pulumi.Input<List<PoolMountCifsMount>?>? cifsMounts;
  /// A `nfsMount` block defined as below.
  final pulumi.Input<List<PoolMountNfsMount>?>? nfsMounts;

  /// Creates a new [PoolMount].
  /// [azureBlobFileSystem] A `azureBlobFileSystem` block defined as below.
  /// [azureFileShares] A `azureFileShare` block defined as below.
  /// [cifsMounts] A `cifsMount` block defined as below.
  /// [nfsMounts] A `nfsMount` block defined as below.
  const PoolMount({
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
      azureBlobFileSystem: (() { final guardedValue = map['azureBlobFileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolMountAzureBlobFileSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureFileShares: (() { final guardedValue = map['azureFileShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolMountAzureFileShare>(guardedValue, (value) => PoolMountAzureFileShare.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cifsMounts: (() { final guardedValue = map['cifsMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolMountCifsMount>(guardedValue, (value) => PoolMountCifsMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nfsMounts: (() { final guardedValue = map['nfsMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolMountNfsMount>(guardedValue, (value) => PoolMountNfsMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
