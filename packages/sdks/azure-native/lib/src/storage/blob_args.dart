// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_access_tier.dart';
import 'blob_type.dart';

/// {@template pulumi_storage_blob_args_doc}
/// The set of arguments for Blob.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_args_doc}
class BlobArgs {
  /// The access tier of the storage blob. Only supported for standard storage accounts, not premium.
  final pulumi.Input<BlobAccessTier>? accessTier;
  /// Specifies the storage account in which to create the storage container.
  final pulumi.Input<String> accountName;
  /// The name of the storage blob. Must be unique within the storage container the blob is located. If this property is not specified it will be set to the name of the resource.
  final pulumi.Input<String>? blobName;
  /// The name of the storage container in which this blob should be created.
  final pulumi.Input<String> containerName;
  /// The MD5 sum of the blob contents, base64-encoded. Cannot be defined if blob type is Append.
  final pulumi.Input<String>? contentMd5;
  /// The content type of the storage blob. Defaults to `application/octet-stream`.
  final pulumi.Input<String>? contentType;
  /// A map of custom blob metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// An asset to copy to the blob contents. This field cannot be specified for Append blobs.
  final pulumi.Input<dynamic>? source;
  /// The type of the storage blob to be created. Defaults to 'Block'.
  final pulumi.Input<BlobType>? type;

  /// Creates a new [BlobArgs].
  /// [accessTier] The access tier of the storage blob. Only supported for standard storage accounts, not premium.
  /// [accountName] Specifies the storage account in which to create the storage container.
  /// [blobName] The name of the storage blob. Must be unique within the storage container the blob is located. If this property is not specified it will be set to the name of the resource.
  /// [containerName] The name of the storage container in which this blob should be created.
  /// [contentMd5] The MD5 sum of the blob contents, base64-encoded. Cannot be defined if blob type is Append.
  /// [contentType] The content type of the storage blob. Defaults to `application/octet-stream`.
  /// [metadata] A map of custom blob metadata.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [source] An asset to copy to the blob contents. This field cannot be specified for Append blobs.
  /// [type] The type of the storage blob to be created. Defaults to 'Block'.
  BlobArgs({
    pulumi.Output<BlobAccessTier>? accessTier,
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? blobName,
    required pulumi.Output<String> containerName,
    pulumi.Output<String>? contentMd5,
    pulumi.Output<String>? contentType,
    pulumi.Output<Map<String, String>>? metadata,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<dynamic>? source,
    pulumi.Output<BlobType>? type,
  }) :
      accessTier = pulumi.Input.asOptionalInput<BlobAccessTier>(accessTier),
      accountName = pulumi.Input.asInput<String>(accountName),
      blobName = pulumi.Input.asOptionalInput<String>(blobName),
      containerName = pulumi.Input.asInput<String>(containerName),
      contentMd5 = pulumi.Input.asOptionalInput<String>(contentMd5),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<dynamic>(source),
      type = pulumi.Input.asOptionalInput<BlobType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?pulumi.Input.mapOptionalInputValue<BlobAccessTier, String>(accessTier, (value) => value.value),
      'accountName': accountName,
      'blobName': ?blobName,
      'containerName': containerName,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
      'type': ?pulumi.Input.mapOptionalInputValue<BlobType, String>(type, (value) => value.value),
    };
  }

  factory BlobArgs.fromMap(Map<String, dynamic> map) {
    return BlobArgs(
      accessTier: map['accessTier'] == null ? null : pulumi.Output.create<BlobAccessTier>(BlobAccessTier.fromValue(map['accessTier'] as String)),
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      blobName: map['blobName'] == null ? null : pulumi.Output.create<String>(map['blobName'] as String),
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      contentMd5: map['contentMd5'] == null ? null : pulumi.Output.create<String>(map['contentMd5'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<dynamic>(map['source']),
      type: map['type'] == null ? null : pulumi.Output.create<BlobType>(BlobType.fromValue(map['type'] as String)),
    );
  }
}

