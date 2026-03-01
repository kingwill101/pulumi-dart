// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZipBlob resources.
class ZipBlobState {
  final pulumi.Input<String>? accessTier;
  final pulumi.Input<String>? cacheControl;
  final pulumi.Input<dynamic>? content;
  final pulumi.Input<String>? contentMd5;
  final pulumi.Input<String>? contentType;
  final pulumi.Input<String>? encryptionScope;
  final pulumi.Input<Map<String, String>>? metadata;
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? parallelism;
  final pulumi.Input<int>? size;
  final pulumi.Input<String>? sourceContent;
  final pulumi.Input<String>? sourceUri;
  final pulumi.Input<String>? storageAccountName;
  final pulumi.Input<String>? storageContainerName;
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? url;

  /// Creates a new [ZipBlobState].
  /// [accessTier] Optional.
  /// [cacheControl] Optional.
  /// [content] Optional.
  /// [contentMd5] Optional.
  /// [contentType] Optional.
  /// [encryptionScope] Optional.
  /// [metadata] Optional.
  /// [name] Optional.
  /// [parallelism] Optional.
  /// [size] Optional.
  /// [sourceContent] Optional.
  /// [sourceUri] Optional.
  /// [storageAccountName] Optional.
  /// [storageContainerName] Optional.
  /// [type] Optional.
  /// [url] Optional.
  ZipBlobState({
    pulumi.Output<String>? accessTier,
    pulumi.Output<String>? cacheControl,
    pulumi.Output<dynamic>? content,
    pulumi.Output<String>? contentMd5,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? encryptionScope,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<int>? parallelism,
    pulumi.Output<int>? size,
    pulumi.Output<String>? sourceContent,
    pulumi.Output<String>? sourceUri,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<String>? storageContainerName,
    pulumi.Output<String>? type,
    pulumi.Output<String>? url,
  }) :
      accessTier = pulumi.Input.asOptionalInput<String>(accessTier),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      content = pulumi.Input.asOptionalInput<dynamic>(content),
      contentMd5 = pulumi.Input.asOptionalInput<String>(contentMd5),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      encryptionScope = pulumi.Input.asOptionalInput<String>(encryptionScope),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      parallelism = pulumi.Input.asOptionalInput<int>(parallelism),
      size = pulumi.Input.asOptionalInput<int>(size),
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
      'content': ?content,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'encryptionScope': ?encryptionScope,
      'metadata': ?metadata,
      'name': ?name,
      'parallelism': ?parallelism,
      'size': ?size,
      'sourceContent': ?sourceContent,
      'sourceUri': ?sourceUri,
      'storageAccountName': ?storageAccountName,
      'storageContainerName': ?storageContainerName,
      'type': ?type,
      'url': ?url,
    };
  }

  factory ZipBlobState.fromMap(Map<String, dynamic> map) {
    return ZipBlobState(
      accessTier: map['accessTier'] == null ? null : pulumi.Output.create<String>(map['accessTier'] as String),
      cacheControl: map['cacheControl'] == null ? null : pulumi.Output.create<String>(map['cacheControl'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<dynamic>(map['content']),
      contentMd5: map['contentMd5'] == null ? null : pulumi.Output.create<String>(map['contentMd5'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      encryptionScope: map['encryptionScope'] == null ? null : pulumi.Output.create<String>(map['encryptionScope'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parallelism: map['parallelism'] == null ? null : pulumi.Output.create<int>(map['parallelism'] as int),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      sourceContent: map['sourceContent'] == null ? null : pulumi.Output.create<String>(map['sourceContent'] as String),
      sourceUri: map['sourceUri'] == null ? null : pulumi.Output.create<String>(map['sourceUri'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageContainerName: map['storageContainerName'] == null ? null : pulumi.Output.create<String>(map['storageContainerName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

