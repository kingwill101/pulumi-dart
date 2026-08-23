// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_bucket_with_server_file_system_nfs_user.dart';
import 'get_volume_bucket_with_server_key_vault.dart';
import 'get_volume_bucket_with_server_server.dart';

/// Result data returned by getVolumeBucketWithServer.
class GetVolumeBucketWithServerResult {
  /// The CIFS username used by the bucket (only set when the bucket is configured for CIFS).
  final String fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below (only set when the bucket is configured for NFS).
  final List<GetVolumeBucketWithServerFileSystemNfsUser> fileSystemNfsUsers;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `keyVault` block as defined below (populated only when the bucket is configured against Azure Key Vault).
  final List<GetVolumeBucketWithServerKeyVault> keyVaults;
  final String name;
  final String netappVolumeId;
  /// The volume sub-path mounted inside the bucket.
  final String path;
  /// The bucket permission level (`ReadOnly` or `ReadWrite`).
  final String permissions;
  /// The Common Name (CN) of the bucket server certificate.
  final String serverCertificateCommonName;
  /// The expiry date of the bucket server certificate, in RFC3339 format.
  final String serverCertificateExpiryDate;
  /// The IP address that backs the bucket endpoint.
  final String serverIpAddress;
  /// A `server` block as defined below.
  final List<GetVolumeBucketWithServerServer> servers;
  /// The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  final String status;

  /// Creates a new [GetVolumeBucketWithServerResult].
  /// [fileSystemCifsUsername] The CIFS username used by the bucket (only set when the bucket is configured for CIFS).
  /// [fileSystemNfsUsers] A `fileSystemNfsUser` block as defined below (only set when the bucket is configured for NFS).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaults] A `keyVault` block as defined below (populated only when the bucket is configured against Azure Key Vault).
  /// [name] Required.
  /// [netappVolumeId] Required.
  /// [path] The volume sub-path mounted inside the bucket.
  /// [permissions] The bucket permission level (`ReadOnly` or `ReadWrite`).
  /// [serverCertificateCommonName] The Common Name (CN) of the bucket server certificate.
  /// [serverCertificateExpiryDate] The expiry date of the bucket server certificate, in RFC3339 format.
  /// [serverIpAddress] The IP address that backs the bucket endpoint.
  /// [servers] A `server` block as defined below.
  /// [status] The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  const GetVolumeBucketWithServerResult({
    required this.fileSystemCifsUsername,
    required this.fileSystemNfsUsers,
    required this.id,
    required this.keyVaults,
    required this.name,
    required this.netappVolumeId,
    required this.path,
    required this.permissions,
    required this.serverCertificateCommonName,
    required this.serverCertificateExpiryDate,
    required this.serverIpAddress,
    required this.servers,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemCifsUsername': fileSystemCifsUsername,
      'fileSystemNfsUsers': pulumi.Input.encodeList<GetVolumeBucketWithServerFileSystemNfsUser, Map<String, dynamic>>(fileSystemNfsUsers, (value) => value.toMap()),
      'id': id,
      'keyVaults': pulumi.Input.encodeList<GetVolumeBucketWithServerKeyVault, Map<String, dynamic>>(keyVaults, (value) => value.toMap()),
      'name': name,
      'netappVolumeId': netappVolumeId,
      'path': path,
      'permissions': permissions,
      'serverCertificateCommonName': serverCertificateCommonName,
      'serverCertificateExpiryDate': serverCertificateExpiryDate,
      'serverIpAddress': serverIpAddress,
      'servers': pulumi.Input.encodeList<GetVolumeBucketWithServerServer, Map<String, dynamic>>(servers, (value) => value.toMap()),
      'status': status,
    };
  }

  factory GetVolumeBucketWithServerResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketWithServerResult(
      fileSystemCifsUsername: map['fileSystemCifsUsername'] as String,
      fileSystemNfsUsers: pulumi.Input.decodeList<GetVolumeBucketWithServerFileSystemNfsUser>(map['fileSystemNfsUsers']!, (value) => GetVolumeBucketWithServerFileSystemNfsUser.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      keyVaults: pulumi.Input.decodeList<GetVolumeBucketWithServerKeyVault>(map['keyVaults']!, (value) => GetVolumeBucketWithServerKeyVault.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      netappVolumeId: map['netappVolumeId'] as String,
      path: map['path'] as String,
      permissions: map['permissions'] as String,
      serverCertificateCommonName: map['serverCertificateCommonName'] as String,
      serverCertificateExpiryDate: map['serverCertificateExpiryDate'] as String,
      serverIpAddress: map['serverIpAddress'] as String,
      servers: pulumi.Input.decodeList<GetVolumeBucketWithServerServer>(map['servers']!, (value) => GetVolumeBucketWithServerServer.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
    );
  }
}
