// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_blob_container_legal_hold_args_doc}
/// The set of arguments for BlobContainerLegalHold.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_container_legal_hold_args_doc}
class BlobContainerLegalHoldArgs {
  /// Name of the Storage Account.
  final pulumi.Input<String> accountName;
  /// When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining legal hold protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  final pulumi.Input<bool>? allowProtectedAppendWritesAll;
  /// Name of the Blob Container.
  final pulumi.Input<String> containerName;
  /// Name of the resource group that contains the storage account.
  final pulumi.Input<String> resourceGroupName;
  /// List of legal hold tags. Each tag should be 3 to 23 alphanumeric characters and is normalized to lower case at SRP.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [BlobContainerLegalHoldArgs].
  /// [accountName] Name of the Storage Account.
  /// [allowProtectedAppendWritesAll] When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining legal hold protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  /// [containerName] Name of the Blob Container.
  /// [resourceGroupName] Name of the resource group that contains the storage account.
  /// [tags] List of legal hold tags. Each tag should be 3 to 23 alphanumeric characters and is normalized to lower case at SRP.
  const BlobContainerLegalHoldArgs({
    required this.accountName,
    this.allowProtectedAppendWritesAll,
    required this.containerName,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'allowProtectedAppendWritesAll': ?allowProtectedAppendWritesAll,
      'containerName': containerName,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory BlobContainerLegalHoldArgs.fromMap(Map<String, dynamic> map) {
    return BlobContainerLegalHoldArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      allowProtectedAppendWritesAll: (() { final guardedValue = map['allowProtectedAppendWritesAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}
