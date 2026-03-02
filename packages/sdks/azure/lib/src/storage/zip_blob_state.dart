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
    this.accessTier,
    this.cacheControl,
    this.content,
    this.contentMd5,
    this.contentType,
    this.encryptionScope,
    this.metadata,
    this.name,
    this.parallelism,
    this.size,
    this.sourceContent,
    this.sourceUri,
    this.storageAccountName,
    this.storageContainerName,
    this.type,
    this.url,
  });

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
      accessTier: map['accessTier'] == null ? null : (map['accessTier'] as String).input(),
      cacheControl: map['cacheControl'] == null ? null : (map['cacheControl'] as String).input(),
      content: map['content'] == null ? null : (map['content']).input(),
      contentMd5: map['contentMd5'] == null ? null : (map['contentMd5'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      encryptionScope: map['encryptionScope'] == null ? null : (map['encryptionScope'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parallelism: map['parallelism'] == null ? null : (map['parallelism'] as int).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
      sourceContent: map['sourceContent'] == null ? null : (map['sourceContent'] as String).input(),
      sourceUri: map['sourceUri'] == null ? null : (map['sourceUri'] as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      storageContainerName: map['storageContainerName'] == null ? null : (map['storageContainerName'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

