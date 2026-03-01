// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Blob resources.
class BlobState {
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
  /// > **NOTE:** `parallelism` is only applicable for Page blobs - support for [Block Blobs is blocked on the upstream issue](https://github.com/jackofallops/giovanni/issues/15).
  final pulumi.Input<int>? parallelism;
  /// Used only for `page` blobs to specify the size in bytes of the blob to be created. Must be a multiple of 512. Defaults to `0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `size` is required if `source_uri` is not set.
  final pulumi.Input<int>? size;
  /// An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if `source_content` or `source_uri` is specified. Changing this forces a new resource to be created.
  final pulumi.Input<dynamic>? source;
  /// The content for this blob which should be defined inline. This field can only be specified for Block blobs and cannot be specified if `source` or `source_uri` is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceContent;
  /// The URI of an existing blob, or a file in the Azure File service, to use as the source contents for the blob to be created. Changing this forces a new resource to be created. This field cannot be specified for Append blobs and cannot be specified if `source` or `source_content` is specified.
  final pulumi.Input<String>? sourceUri;
  /// Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;
  /// The name of the storage container in which this blob should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageContainerName;
  /// The type of the storage blob to be created. Possible values are `Append`, `Block` or `Page`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// The URL of the blob
  final pulumi.Input<String>? url;

  /// Creates a new [BlobState].
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
  /// [url] The URL of the blob
  BlobState({
    pulumi.Output<String>? accessTier,
    pulumi.Output<String>? cacheControl,
    pulumi.Output<String>? contentMd5,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? encryptionScope,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<int>? parallelism,
    pulumi.Output<int>? size,
    pulumi.Output<dynamic>? source,
    pulumi.Output<String>? sourceContent,
    pulumi.Output<String>? sourceUri,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<String>? storageContainerName,
    pulumi.Output<String>? type,
    pulumi.Output<String>? url,
  }) :
      accessTier = pulumi.Input.asOptionalInput<String>(accessTier),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      contentMd5 = pulumi.Input.asOptionalInput<String>(contentMd5),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      encryptionScope = pulumi.Input.asOptionalInput<String>(encryptionScope),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      parallelism = pulumi.Input.asOptionalInput<int>(parallelism),
      size = pulumi.Input.asOptionalInput<int>(size),
      source = pulumi.Input.asOptionalInput<dynamic>(source),
      sourceContent = pulumi.Input.asOptionalInput<String>(sourceContent),
      sourceUri = pulumi.Input.asOptionalInput<String>(sourceUri),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageContainerName = pulumi.Input.asOptionalInput<String>(storageContainerName),
      type = pulumi.Input.asOptionalInput<String>(type),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      'storageAccountName': ?storageAccountName,
      'storageContainerName': ?storageContainerName,
      'type': ?type,
      'url': ?url,
    };
  }

  factory BlobState.fromMap(Map<String, dynamic> map) {
    return BlobState(
      accessTier: map['accessTier'] == null ? null : pulumi.Output.create<String>(map['accessTier'] as String),
      cacheControl: map['cacheControl'] == null ? null : pulumi.Output.create<String>(map['cacheControl'] as String),
      contentMd5: map['contentMd5'] == null ? null : pulumi.Output.create<String>(map['contentMd5'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      encryptionScope: map['encryptionScope'] == null ? null : pulumi.Output.create<String>(map['encryptionScope'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parallelism: map['parallelism'] == null ? null : pulumi.Output.create<int>(map['parallelism'] as int),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      source: map['source'] == null ? null : pulumi.Output.create<dynamic>(map['source']),
      sourceContent: map['sourceContent'] == null ? null : pulumi.Output.create<String>(map['sourceContent'] as String),
      sourceUri: map['sourceUri'] == null ? null : pulumi.Output.create<String>(map['sourceUri'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageContainerName: map['storageContainerName'] == null ? null : pulumi.Output.create<String>(map['storageContainerName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

