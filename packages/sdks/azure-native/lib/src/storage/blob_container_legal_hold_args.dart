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
  BlobContainerLegalHoldArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<bool>? allowProtectedAppendWritesAll,
    required pulumi.Output<String> containerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<String>> tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      allowProtectedAppendWritesAll = pulumi.Input.asOptionalInput<bool>(allowProtectedAppendWritesAll),
      containerName = pulumi.Input.asInput<String>(containerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asInput<List<String>>(tags);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      allowProtectedAppendWritesAll: map['allowProtectedAppendWritesAll'] == null ? null : pulumi.Output.create<bool>(map['allowProtectedAppendWritesAll'] as bool),
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
    );
  }
}

