// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_mount_azure_blob_file_system.dart';
import 'get_pool_mount_azure_file_share.dart';
import 'get_pool_mount_cifs_mount.dart';
import 'get_pool_mount_nfs_mount.dart';

class GetPoolMount {
  /// A `azure_blob_file_system` block defined as below.
  final pulumi.Input<List<GetPoolMountAzureBlobFileSystem>>? azureBlobFileSystems;
  /// A `azure_file_share` block defined as below.
  final pulumi.Input<List<GetPoolMountAzureFileShare>>? azureFileShares;
  /// A `cifs_mount` block defined as below.
  final pulumi.Input<List<GetPoolMountCifsMount>> cifsMounts;
  /// A `nfs_mount` block defined as below.
  final pulumi.Input<List<GetPoolMountNfsMount>> nfsMounts;

  /// Creates a new [GetPoolMount].
  /// [azureBlobFileSystems] A `azure_blob_file_system` block defined as below.
  /// [azureFileShares] A `azure_file_share` block defined as below.
  /// [cifsMounts] A `cifs_mount` block defined as below.
  /// [nfsMounts] A `nfs_mount` block defined as below.
  GetPoolMount({
    this.azureBlobFileSystems,
    this.azureFileShares,
    required this.cifsMounts,
    required this.nfsMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobFileSystems': ?pulumi.Input.mapOptionalInputValue<List<GetPoolMountAzureBlobFileSystem>, List<Map<String, dynamic>>>(azureBlobFileSystems, (value) => pulumi.Input.encodeList<GetPoolMountAzureBlobFileSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureFileShares': ?pulumi.Input.mapOptionalInputValue<List<GetPoolMountAzureFileShare>, List<Map<String, dynamic>>>(azureFileShares, (value) => pulumi.Input.encodeList<GetPoolMountAzureFileShare, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cifsMounts': pulumi.Input.mapInputValue<List<GetPoolMountCifsMount>, List<Map<String, dynamic>>>(cifsMounts, (value) => pulumi.Input.encodeList<GetPoolMountCifsMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfsMounts': pulumi.Input.mapInputValue<List<GetPoolMountNfsMount>, List<Map<String, dynamic>>>(nfsMounts, (value) => pulumi.Input.encodeList<GetPoolMountNfsMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPoolMount.fromMap(Map<String, dynamic> map) {
    return GetPoolMount(
      azureBlobFileSystems: map['azureBlobFileSystems'] == null ? null : (pulumi.Input.decodeList<GetPoolMountAzureBlobFileSystem>(map['azureBlobFileSystems']!, (value) => GetPoolMountAzureBlobFileSystem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      azureFileShares: map['azureFileShares'] == null ? null : (pulumi.Input.decodeList<GetPoolMountAzureFileShare>(map['azureFileShares']!, (value) => GetPoolMountAzureFileShare.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cifsMounts: (pulumi.Input.decodeList<GetPoolMountCifsMount>(map['cifsMounts'], (value) => GetPoolMountCifsMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nfsMounts: (pulumi.Input.decodeList<GetPoolMountNfsMount>(map['nfsMounts'], (value) => GetPoolMountNfsMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

