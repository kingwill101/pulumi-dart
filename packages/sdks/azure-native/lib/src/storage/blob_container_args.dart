// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'immutable_storage_with_versioning.dart';
import 'public_access.dart';

/// {@template pulumi_storage_blob_container_args_doc}
/// The set of arguments for BlobContainer.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_container_args_doc}
class BlobContainerArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String>? containerName;
  /// Default the container to use specified encryption scope for all writes.
  final pulumi.Input<String>? defaultEncryptionScope;
  /// Block override of encryption scope from the container default.
  final pulumi.Input<bool>? denyEncryptionScopeOverride;
  /// Enable NFSv3 all squash on blob container.
  final pulumi.Input<bool>? enableNfsV3AllSquash;
  /// Enable NFSv3 root squash on blob container.
  final pulumi.Input<bool>? enableNfsV3RootSquash;
  /// The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  final pulumi.Input<ImmutableStorageWithVersioning>? immutableStorageWithVersioning;
  /// A name-value pair to associate with the container as metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Specifies whether data in the container may be accessed publicly and the level of access.
  final pulumi.Input<PublicAccess>? publicAccess;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BlobContainerArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [containerName] The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  /// [defaultEncryptionScope] Default the container to use specified encryption scope for all writes.
  /// [denyEncryptionScopeOverride] Block override of encryption scope from the container default.
  /// [enableNfsV3AllSquash] Enable NFSv3 all squash on blob container.
  /// [enableNfsV3RootSquash] Enable NFSv3 root squash on blob container.
  /// [immutableStorageWithVersioning] The object level immutability property of the container. The property is immutable and can only be set to true at the container creation time. Existing containers must undergo a migration process.
  /// [metadata] A name-value pair to associate with the container as metadata.
  /// [publicAccess] Specifies whether data in the container may be accessed publicly and the level of access.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  const BlobContainerArgs({
    required this.accountName,
    this.containerName,
    this.defaultEncryptionScope,
    this.denyEncryptionScopeOverride,
    this.enableNfsV3AllSquash,
    this.enableNfsV3RootSquash,
    this.immutableStorageWithVersioning,
    this.metadata,
    this.publicAccess,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': ?containerName,
      'defaultEncryptionScope': ?defaultEncryptionScope,
      'denyEncryptionScopeOverride': ?denyEncryptionScopeOverride,
      'enableNfsV3AllSquash': ?enableNfsV3AllSquash,
      'enableNfsV3RootSquash': ?enableNfsV3RootSquash,
      'immutableStorageWithVersioning': ?pulumi.Input.mapOptionalInputValue<ImmutableStorageWithVersioning, Map<String, dynamic>>(immutableStorageWithVersioning, (value) => value.toMap()),
      'metadata': ?metadata,
      'publicAccess': ?pulumi.Input.mapOptionalInputValue<PublicAccess, String>(publicAccess, (value) => value.wireValue),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BlobContainerArgs.fromMap(Map<String, dynamic> map) {
    return BlobContainerArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultEncryptionScope: (() { final guardedValue = map['defaultEncryptionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denyEncryptionScopeOverride: (() { final guardedValue = map['denyEncryptionScopeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNfsV3AllSquash: (() { final guardedValue = map['enableNfsV3AllSquash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNfsV3RootSquash: (() { final guardedValue = map['enableNfsV3RootSquash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      immutableStorageWithVersioning: (() { final guardedValue = map['immutableStorageWithVersioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImmutableStorageWithVersioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      publicAccess: (() { final guardedValue = map['publicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicAccess.fromValue(guardedValue as String)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

