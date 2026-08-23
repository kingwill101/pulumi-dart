// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_bucket_file_system_nfs_user.dart';
import 'get_volume_bucket_key_vault.dart';

/// Result data returned by getVolumeBucket.
class GetVolumeBucketResult {
  /// The CIFS username used by the bucket (only set when the bucket is configured for CIFS).
  final String fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below (only set when the bucket is configured for NFS).
  final List<GetVolumeBucketFileSystemNfsUser> fileSystemNfsUsers;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `keyVault` block as defined below (populated only when the bucket is configured against Azure Key Vault).
  final List<GetVolumeBucketKeyVault> keyVaults;
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
  /// The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  final String status;

  /// Creates a new [GetVolumeBucketResult].
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
  /// [status] The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  const GetVolumeBucketResult({
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
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemCifsUsername': fileSystemCifsUsername,
      'fileSystemNfsUsers': pulumi.Input.encodeList<GetVolumeBucketFileSystemNfsUser, Map<String, dynamic>>(fileSystemNfsUsers, (value) => value.toMap()),
      'id': id,
      'keyVaults': pulumi.Input.encodeList<GetVolumeBucketKeyVault, Map<String, dynamic>>(keyVaults, (value) => value.toMap()),
      'name': name,
      'netappVolumeId': netappVolumeId,
      'path': path,
      'permissions': permissions,
      'serverCertificateCommonName': serverCertificateCommonName,
      'serverCertificateExpiryDate': serverCertificateExpiryDate,
      'serverIpAddress': serverIpAddress,
      'status': status,
    };
  }

  factory GetVolumeBucketResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketResult(
      fileSystemCifsUsername: map['fileSystemCifsUsername'] as String,
      fileSystemNfsUsers: pulumi.Input.decodeList<GetVolumeBucketFileSystemNfsUser>(map['fileSystemNfsUsers']!, (value) => GetVolumeBucketFileSystemNfsUser.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      keyVaults: pulumi.Input.decodeList<GetVolumeBucketKeyVault>(map['keyVaults']!, (value) => GetVolumeBucketKeyVault.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      netappVolumeId: map['netappVolumeId'] as String,
      path: map['path'] as String,
      permissions: map['permissions'] as String,
      serverCertificateCommonName: map['serverCertificateCommonName'] as String,
      serverCertificateExpiryDate: map['serverCertificateExpiryDate'] as String,
      serverIpAddress: map['serverIpAddress'] as String,
      status: map['status'] as String,
    );
  }
}
