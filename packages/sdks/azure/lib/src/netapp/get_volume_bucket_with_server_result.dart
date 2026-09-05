// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_bucket_with_server_file_system_nfs_user.dart';
import 'get_volume_bucket_with_server_key_vault.dart';
import 'get_volume_bucket_with_server_server.dart';

/// Result data returned by getVolumeBucketWithServer.
class GetVolumeBucketWithServerResult {
  /// The CIFS username used by the bucket (only set when the bucket is configured for CIFS).
  final String? fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below (only set when the bucket is configured for NFS).
  final List<GetVolumeBucketWithServerFileSystemNfsUser>? fileSystemNfsUsers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `keyVault` block as defined below (populated only when the bucket is configured against Azure Key Vault).
  final List<GetVolumeBucketWithServerKeyVault>? keyVaults;
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
  /// A `server` block as defined below.
  final List<GetVolumeBucketWithServerServer>? servers;
  /// The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  final String? status;

  /// Creates a new [GetVolumeBucketWithServerResult].
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
  /// [servers] A `server` block as defined below.
  /// [status] The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  const GetVolumeBucketWithServerResult({
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
    this.servers,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemCifsUsername': ?fileSystemCifsUsername,
      'fileSystemNfsUsers': ?(() { final guardedValue = fileSystemNfsUsers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeBucketWithServerFileSystemNfsUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'keyVaults': ?(() { final guardedValue = keyVaults; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeBucketWithServerKeyVault, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'netappVolumeId': ?netappVolumeId,
      'path': ?path,
      'permissions': ?permissions,
      'serverCertificateCommonName': ?serverCertificateCommonName,
      'serverCertificateExpiryDate': ?serverCertificateExpiryDate,
      'serverIpAddress': ?serverIpAddress,
      'servers': ?(() { final guardedValue = servers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeBucketWithServerServer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
    };
  }

  factory GetVolumeBucketWithServerResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketWithServerResult(
      fileSystemCifsUsername: (() { final guardedValue = map['fileSystemCifsUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemNfsUsers: (() { final guardedValue = map['fileSystemNfsUsers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeBucketWithServerFileSystemNfsUser>(guardedValue, (value) => GetVolumeBucketWithServerFileSystemNfsUser.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaults: (() { final guardedValue = map['keyVaults']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeBucketWithServerKeyVault>(guardedValue, (value) => GetVolumeBucketWithServerKeyVault.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      netappVolumeId: (() { final guardedValue = map['netappVolumeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCertificateCommonName: (() { final guardedValue = map['serverCertificateCommonName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCertificateExpiryDate: (() { final guardedValue = map['serverCertificateExpiryDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverIpAddress: (() { final guardedValue = map['serverIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeBucketWithServerServer>(guardedValue, (value) => GetVolumeBucketWithServerServer.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
