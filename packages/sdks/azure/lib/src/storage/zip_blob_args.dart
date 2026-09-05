// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_zip_blob_zip_blob_args_doc}
/// The set of arguments for ZipBlob.
/// {@endtemplate}
/// {@macro pulumi_storage_zip_blob_zip_blob_args_doc}
class ZipBlobArgs {
  final pulumi.Input<String?>? accessTier;
  final pulumi.Input<String?>? cacheControl;
  final pulumi.Input<dynamic>? content;
  final pulumi.Input<String?>? contentMd5;
  final pulumi.Input<String?>? contentType;
  final pulumi.Input<String?>? encryptionScope;
  final pulumi.Input<Map<String, String>?>? metadata;
  final pulumi.Input<String?>? name;
  final pulumi.Input<int?>? parallelism;
  final pulumi.Input<int?>? size;
  final pulumi.Input<String?>? sourceContent;
  final pulumi.Input<String?>? sourceUri;
  final pulumi.Input<String?>? storageAccountName;
  final pulumi.Input<String?>? storageContainerId;
  final pulumi.Input<String?>? storageContainerName;
  final pulumi.Input<String> type;

  /// Creates a new [ZipBlobArgs].
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
  /// [storageContainerId] Optional.
  /// [storageContainerName] Optional.
  /// [type] Required.
  const ZipBlobArgs({
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
    this.storageContainerId,
    this.storageContainerName,
    required this.type,
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
      'storageContainerId': ?storageContainerId,
      'storageContainerName': ?storageContainerName,
      'type': type,
    };
  }

  factory ZipBlobArgs.fromMap(Map<String, dynamic> map) {
    return ZipBlobArgs(
      accessTier: (() { final guardedValue = map['accessTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      contentMd5: (() { final guardedValue = map['contentMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionScope: (() { final guardedValue = map['encryptionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sourceContent: (() { final guardedValue = map['sourceContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerId: (() { final guardedValue = map['storageContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
