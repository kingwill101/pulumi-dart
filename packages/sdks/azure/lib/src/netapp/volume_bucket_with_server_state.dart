// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_bucket_with_server_file_system_nfs_user.dart';
import 'volume_bucket_with_server_key_vault.dart';
import 'volume_bucket_with_server_server.dart';

/// Input properties used for looking up and filtering VolumeBucketWithServer resources.
class VolumeBucketWithServerState {
  /// The CIFS username used by the bucket when accessing volume data over SMB. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  final pulumi.Input<String?>? fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  final pulumi.Input<VolumeBucketWithServerFileSystemNfsUser?>? fileSystemNfsUser;
  /// A `keyVault` block as defined below. Used to source the server certificate and to store generated credentials in Azure Key Vault. Mutually exclusive with `server.0.certificate_pem`.
  final pulumi.Input<VolumeBucketWithServerKeyVault?>? keyVault;
  /// The S3-compatible name of the bucket. Must be 3-63 characters long, DNS-compliant (lowercase letters, digits, hyphens or periods), must start and end with a letter or number and must not look like an IPv4 address. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The volume sub-path mounted inside the bucket. Defaults to `/`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? path;
  /// The bucket permission level. Possible values are `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  final pulumi.Input<String?>? permissions;
  /// A `server` block as defined below. Used to provide the bucket server FQDN and a directly uploaded PEM certificate. The certificate source (`server.0.certificate_pem`) is mutually exclusive with `keyVault`.
  final pulumi.Input<VolumeBucketWithServerServer?>? server;
  /// The Common Name (CN) of the bucket server certificate.
  final pulumi.Input<String?>? serverCertificateCommonName;
  /// The expiry date of the bucket server certificate, in RFC3339 format.
  final pulumi.Input<String?>? serverCertificateExpiryDate;
  /// The IP address that backs the bucket endpoint.
  final pulumi.Input<String?>? serverIpAddress;
  /// The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  final pulumi.Input<String?>? status;
  /// The ARM ID of the parent NetApp Volume the bucket attaches to. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? volumeId;

  /// Creates a new [VolumeBucketWithServerState].
  /// [fileSystemCifsUsername] The CIFS username used by the bucket when accessing volume data over SMB. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  /// [fileSystemNfsUser] A `fileSystemNfsUser` block as defined below. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  /// [keyVault] A `keyVault` block as defined below. Used to source the server certificate and to store generated credentials in Azure Key Vault. Mutually exclusive with `server.0.certificate_pem`.
  /// [name] The S3-compatible name of the bucket. Must be 3-63 characters long, DNS-compliant (lowercase letters, digits, hyphens or periods), must start and end with a letter or number and must not look like an IPv4 address. Changing this forces a new resource to be created.
  /// [path] The volume sub-path mounted inside the bucket. Defaults to `/`. Changing this forces a new resource to be created.
  /// [permissions] The bucket permission level. Possible values are `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  /// [server] A `server` block as defined below. Used to provide the bucket server FQDN and a directly uploaded PEM certificate. The certificate source (`server.0.certificate_pem`) is mutually exclusive with `keyVault`.
  /// [serverCertificateCommonName] The Common Name (CN) of the bucket server certificate.
  /// [serverCertificateExpiryDate] The expiry date of the bucket server certificate, in RFC3339 format.
  /// [serverIpAddress] The IP address that backs the bucket endpoint.
  /// [status] The credentials status of the bucket. Possible values are `NoCredentialsSet`, `CredentialsExpired` and `Active`.
  /// [volumeId] The ARM ID of the parent NetApp Volume the bucket attaches to. Changing this forces a new resource to be created.
  const VolumeBucketWithServerState({
    this.fileSystemCifsUsername,
    this.fileSystemNfsUser,
    this.keyVault,
    this.name,
    this.path,
    this.permissions,
    this.server,
    this.serverCertificateCommonName,
    this.serverCertificateExpiryDate,
    this.serverIpAddress,
    this.status,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemCifsUsername': ?fileSystemCifsUsername,
      'fileSystemNfsUser': ?pulumi.Input.mapOptionalInputValue<VolumeBucketWithServerFileSystemNfsUser, Map<String, dynamic>>(fileSystemNfsUser, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<VolumeBucketWithServerKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'name': ?name,
      'path': ?path,
      'permissions': ?permissions,
      'server': ?pulumi.Input.mapOptionalInputValue<VolumeBucketWithServerServer, Map<String, dynamic>>(server, (value) => value.toMap()),
      'serverCertificateCommonName': ?serverCertificateCommonName,
      'serverCertificateExpiryDate': ?serverCertificateExpiryDate,
      'serverIpAddress': ?serverIpAddress,
      'status': ?status,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeBucketWithServerState.fromMap(Map<String, dynamic> map) {
    return VolumeBucketWithServerState(
      fileSystemCifsUsername: (() { final guardedValue = map['fileSystemCifsUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemNfsUser: (() { final guardedValue = map['fileSystemNfsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeBucketWithServerFileSystemNfsUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeBucketWithServerKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeBucketWithServerServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverCertificateCommonName: (() { final guardedValue = map['serverCertificateCommonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificateExpiryDate: (() { final guardedValue = map['serverCertificateExpiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverIpAddress: (() { final guardedValue = map['serverIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
