// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_bucket_file_system_nfs_user.dart';
import 'get_volume_bucket_key_vault.dart';

/// Result data returned by getVolumeBucket.
class GetVolumeBucketResult {
  /// The CIFS username used by the bucket (only set when the bucket is configured for CIFS).
  final String? fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below (only set when the bucket is configured for NFS).
  final List<GetVolumeBucketFileSystemNfsUser>? fileSystemNfsUsers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `keyVault` block as defined below (populated only when the bucket is configured against Azure Key Vault).
  final List<GetVolumeBucketKeyVault>? keyVaults;
  final String? name;
  final String? netappVolumeId;
  /// The volume sub-path mounted inside the bucket.
  final String? path;
  /// The bucket permission level (`ReadOnly` or `ReadWrite`).
  final String? permissions;
  /// The Common Name (CN) of the bucket server certificate.
  final String? serverCertificateCommonName;
  /// The expiry date of the bucket server certificate, in RFC3339 format.
  final String? serverCertificateExpiryDate;
  /// The IP address that backs the bucket endpoint.
  final String? serverIpAddress;
  /// The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  final String? status;

  /// Creates a new [GetVolumeBucketResult].
  /// [fileSystemCifsUsername] The CIFS username used by the bucket (only set when the bucket is configured for CIFS).
  /// [fileSystemNfsUsers] A `fileSystemNfsUser` block as defined below (only set when the bucket is configured for NFS).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaults] A `keyVault` block as defined below (populated only when the bucket is configured against Azure Key Vault).
  /// [name] Optional.
  /// [netappVolumeId] Optional.
  /// [path] The volume sub-path mounted inside the bucket.
  /// [permissions] The bucket permission level (`ReadOnly` or `ReadWrite`).
  /// [serverCertificateCommonName] The Common Name (CN) of the bucket server certificate.
  /// [serverCertificateExpiryDate] The expiry date of the bucket server certificate, in RFC3339 format.
  /// [serverIpAddress] The IP address that backs the bucket endpoint.
  /// [status] The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  const GetVolumeBucketResult({
    this.fileSystemCifsUsername,
    this.fileSystemNfsUsers,
    this.id,
    this.keyVaults,
    this.name,
    this.netappVolumeId,
    this.path,
    this.permissions,
    this.serverCertificateCommonName,
    this.serverCertificateExpiryDate,
    this.serverIpAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemCifsUsername': ?fileSystemCifsUsername,
      'fileSystemNfsUsers': ?(() { final guardedValue = fileSystemNfsUsers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeBucketFileSystemNfsUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'keyVaults': ?(() { final guardedValue = keyVaults; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeBucketKeyVault, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'netappVolumeId': ?netappVolumeId,
      'path': ?path,
      'permissions': ?permissions,
      'serverCertificateCommonName': ?serverCertificateCommonName,
      'serverCertificateExpiryDate': ?serverCertificateExpiryDate,
      'serverIpAddress': ?serverIpAddress,
      'status': ?status,
    };
  }

  factory GetVolumeBucketResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketResult(
      fileSystemCifsUsername: (() { final guardedValue = map['fileSystemCifsUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemNfsUsers: (() { final guardedValue = map['fileSystemNfsUsers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeBucketFileSystemNfsUser>(guardedValue, (value) => GetVolumeBucketFileSystemNfsUser.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaults: (() { final guardedValue = map['keyVaults']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeBucketKeyVault>(guardedValue, (value) => GetVolumeBucketKeyVault.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      netappVolumeId: (() { final guardedValue = map['netappVolumeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCertificateCommonName: (() { final guardedValue = map['serverCertificateCommonName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCertificateExpiryDate: (() { final guardedValue = map['serverCertificateExpiryDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverIpAddress: (() { final guardedValue = map['serverIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
