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
    this.accessTier,
    required this.accountName,
    this.blobName,
    required this.containerName,
    this.contentMd5,
    this.contentType,
    this.metadata,
    required this.resourceGroupName,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?pulumi.Input.mapOptionalInputValue<BlobAccessTier, String>(
        accessTier,
        (value) => value.wireValue,
      ),
      'accountName': accountName,
      'blobName': ?blobName,
      'containerName': containerName,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
      'type': ?pulumi.Input.mapOptionalInputValue<BlobType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory BlobArgs.fromMap(Map<String, dynamic> map) {
    return BlobArgs(
      accessTier: (() {
        final guardedValue = map['accessTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BlobAccessTier.fromValue(guardedValue as String),
        );
      })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      blobName: (() {
        final guardedValue = map['blobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      contentMd5: (() {
        final guardedValue = map['contentMd5'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentType: (() {
        final guardedValue = map['contentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BlobType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
