// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_bucket_file_system_nfs_user.dart';
import 'volume_bucket_key_vault.dart';

/// {@template pulumi_netapp_volume_bucket_volume_bucket_args_doc}
/// The set of arguments for VolumeBucket.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_bucket_volume_bucket_args_doc}
class VolumeBucketArgs {
  /// The CIFS username used by the bucket when accessing volume data over SMB. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  final pulumi.Input<String?>? fileSystemCifsUsername;
  /// A `fileSystemNfsUser` block as defined below. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  final pulumi.Input<VolumeBucketFileSystemNfsUser?>? fileSystemNfsUser;
  /// A `keyVault` block as defined below. Used to store the generated bucket credentials in Azure Key Vault.
  final pulumi.Input<VolumeBucketKeyVault?>? keyVault;
  /// The S3-compatible name of the bucket. Must be 3-63 characters long, DNS-compliant (lowercase letters, digits, hyphens or periods), must start and end with a letter or number and must not look like an IPv4 address. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The volume sub-path mounted inside the bucket. Defaults to `/`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? path;
  /// The bucket permission level. Possible values are `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  final pulumi.Input<String?>? permissions;
  /// The ARM ID of the parent NetApp Volume the bucket attaches to. Changing this forces a new resource to be created.
  final pulumi.Input<String> volumeId;

  /// Creates a new [VolumeBucketArgs].
  /// [fileSystemCifsUsername] The CIFS username used by the bucket when accessing volume data over SMB. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  /// [fileSystemNfsUser] A `fileSystemNfsUser` block as defined below. Exactly one of `fileSystemNfsUser` or `fileSystemCifsUsername` must be specified.
  /// [keyVault] A `keyVault` block as defined below. Used to store the generated bucket credentials in Azure Key Vault.
  /// [name] The S3-compatible name of the bucket. Must be 3-63 characters long, DNS-compliant (lowercase letters, digits, hyphens or periods), must start and end with a letter or number and must not look like an IPv4 address. Changing this forces a new resource to be created.
  /// [path] The volume sub-path mounted inside the bucket. Defaults to `/`. Changing this forces a new resource to be created.
  /// [permissions] The bucket permission level. Possible values are `ReadOnly` and `ReadWrite`. Defaults to `ReadOnly`.
  /// [volumeId] The ARM ID of the parent NetApp Volume the bucket attaches to. Changing this forces a new resource to be created.
  const VolumeBucketArgs({
    this.fileSystemCifsUsername,
    this.fileSystemNfsUser,
    this.keyVault,
    this.name,
    this.path,
    this.permissions,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemCifsUsername': ?fileSystemCifsUsername,
      'fileSystemNfsUser': ?pulumi.Input.mapOptionalInputValue<VolumeBucketFileSystemNfsUser, Map<String, dynamic>>(fileSystemNfsUser, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<VolumeBucketKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'name': ?name,
      'path': ?path,
      'permissions': ?permissions,
      'volumeId': volumeId,
    };
  }

  factory VolumeBucketArgs.fromMap(Map<String, dynamic> map) {
    return VolumeBucketArgs(
      fileSystemCifsUsername: (() { final guardedValue = map['fileSystemCifsUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemNfsUser: (() { final guardedValue = map['fileSystemNfsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeBucketFileSystemNfsUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeBucketKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}
