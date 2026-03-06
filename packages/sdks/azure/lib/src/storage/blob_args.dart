// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_blob_blob_args_doc}
/// The set of arguments for Blob.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_blob_args_doc}
class BlobArgs {
  /// The access tier of the storage blob. Possible values are `Archive`, `Cool` and `Hot`.
  final pulumi.Input<String>? accessTier;
  /// Controls the [cache control header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) content of the response when blob is requested .
  final pulumi.Input<String>? cacheControl;
  /// The MD5 sum of the blob contents. Cannot be defined if `source_uri` is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
  final pulumi.Input<String>? contentMd5;
  /// The content type of the storage blob. Cannot be defined if `source_uri` is defined. Defaults to `application/octet-stream`.
  final pulumi.Input<String>? contentType;
  /// The encryption scope to use for this blob.
  final pulumi.Input<String>? encryptionScope;
  /// A map of custom blob metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The number of workers per CPU core to run for concurrent uploads. Defaults to `8`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `parallelism` is only applicable for Page blobs - support for [Block Blobs is blocked on the upstream issue](https://github.com/jackofallops/giovanni/issues/15).
  final pulumi.Input<int>? parallelism;
  /// Used only for `page` blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to `0`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `size` is required if `source_uri` is not set.
  final pulumi.Input<int>? size;
  /// An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if `source_content` or `source_uri` is specified. Changing this forces a new resource to be created.
  final pulumi.Input<dynamic>? source;
  /// The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if `source` or `source_uri` is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceContent;
  /// The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if `source` or `source_content` is specified.
  final pulumi.Input<String>? sourceUri;
  /// Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountName;
  /// The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageContainerName;
  /// The type of the storage blob to be created. Possible values are `Append`, `Block` or `Page`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [BlobArgs].
  /// [accessTier] The access tier of the storage blob. Possible values are `Archive`, `Cool` and `Hot`.
  /// [cacheControl] Controls the [cache control header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) content of the response when blob is requested .
  /// [contentMd5] The MD5 sum of the blob contents. Cannot be defined if `source_uri` is defined, or if blob type is Append or Page. Changing this forces a new resource to be created.
  /// [contentType] The content type of the storage blob. Cannot be defined if `source_uri` is defined. Defaults to `application/octet-stream`.
  /// [encryptionScope] The encryption scope to use for this blob.
  /// [metadata] A map of custom blob metadata.
  /// [name] The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created.
  /// [parallelism] The number of workers per CPU core to run for concurrent uploads. Defaults to `8`. Changing this forces a new resource to be created.
  /// [size] Used only for `page` blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to `0`. Changing this forces a new resource to be created.
  /// [source] An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if `source_content` or `source_uri` is specified. Changing this forces a new resource to be created.
  /// [sourceContent] The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if `source` or `source_uri` is specified. Changing this forces a new resource to be created.
  /// [sourceUri] The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if `source` or `source_content` is specified.
  /// [storageAccountName] Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
  /// [storageContainerName] The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
  /// [type] The type of the storage blob to be created. Possible values are `Append`, `Block` or `Page`. Changing this forces a new resource to be created.
  const BlobArgs({
    this.accessTier,
    this.cacheControl,
    this.contentMd5,
    this.contentType,
    this.encryptionScope,
    this.metadata,
    this.name,
    this.parallelism,
    this.size,
    this.source,
    this.sourceContent,
    this.sourceUri,
    required this.storageAccountName,
    required this.storageContainerName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'cacheControl': ?cacheControl,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'encryptionScope': ?encryptionScope,
      'metadata': ?metadata,
      'name': ?name,
      'parallelism': ?parallelism,
      'size': ?size,
      'source': ?source,
      'sourceContent': ?sourceContent,
      'sourceUri': ?sourceUri,
      'storageAccountName': storageAccountName,
      'storageContainerName': storageContainerName,
      'type': type,
    };
  }

  factory BlobArgs.fromMap(Map<String, dynamic> map) {
    return BlobArgs(
      accessTier: (() { final guardedValue = map['accessTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentMd5: (() { final guardedValue = map['contentMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionScope: (() { final guardedValue = map['encryptionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceContent: (() { final guardedValue = map['sourceContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      storageContainerName: pulumi.Input.fromValue(map['storageContainerName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

