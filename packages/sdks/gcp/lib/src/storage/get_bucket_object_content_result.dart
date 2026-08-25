// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_content_context.dart';
import 'get_bucket_object_content_customer_encryption.dart';
import 'get_bucket_object_content_retention.dart';

/// Result data returned by getBucketObjectContent.
class GetBucketObjectContentResult {
  final String? bucket;
  final String? cacheControl;
  /// (Computed) The content of the object.
  final String? content;
  /// (Computed) Base64 encoded version of the object content.
  /// Use this when dealing with binary data.
  final String? contentBase64;
  /// (Computed) Base64 encoded SHA512 checksum of file content.
  final String? contentBase64sha512;
  final String? contentDisposition;
  final String? contentEncoding;
  /// (Computed) Hex encoded SHA512 checksum of file content.
  final String? contentHexsha512;
  final String? contentLanguage;
  final String? contentType;
  final List<GetBucketObjectContentContext>? contexts;
  final String? crc32c;
  final List<GetBucketObjectContentCustomerEncryption>? customerEncryptions;
  final String? deletionPolicy;
  final String? detectMd5hash;
  final bool? eventBasedHold;
  final bool? forceEmptyContentType;
  final int? generation;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyName;
  final String? md5hash;
  final String? md5hexhash;
  final String? mediaLink;
  final Map<String, String>? metadata;
  final String? name;
  final String? outputName;
  final List<GetBucketObjectContentRetention>? retentions;
  final String? selfLink;
  final String? source;
  final String? sourceMd5hash;
  final String? storageClass;
  final bool? temporaryHold;

  /// Creates a new [GetBucketObjectContentResult].
  /// [bucket] Optional.
  /// [cacheControl] Optional.
  /// [content] (Computed) The content of the object.
  /// [contentBase64] (Computed) Base64 encoded version of the object content.
  /// [contentBase64sha512] (Computed) Base64 encoded SHA512 checksum of file content.
  /// [contentDisposition] Optional.
  /// [contentEncoding] Optional.
  /// [contentHexsha512] (Computed) Hex encoded SHA512 checksum of file content.
  /// [contentLanguage] Optional.
  /// [contentType] Optional.
  /// [contexts] Optional.
  /// [crc32c] Optional.
  /// [customerEncryptions] Optional.
  /// [deletionPolicy] Optional.
  /// [detectMd5hash] Optional.
  /// [eventBasedHold] Optional.
  /// [forceEmptyContentType] Optional.
  /// [generation] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Optional.
  /// [md5hash] Optional.
  /// [md5hexhash] Optional.
  /// [mediaLink] Optional.
  /// [metadata] Optional.
  /// [name] Optional.
  /// [outputName] Optional.
  /// [retentions] Optional.
  /// [selfLink] Optional.
  /// [source] Optional.
  /// [sourceMd5hash] Optional.
  /// [storageClass] Optional.
  /// [temporaryHold] Optional.
  const GetBucketObjectContentResult({
    this.bucket,
    this.cacheControl,
    this.content,
    this.contentBase64,
    this.contentBase64sha512,
    this.contentDisposition,
    this.contentEncoding,
    this.contentHexsha512,
    this.contentLanguage,
    this.contentType,
    this.contexts,
    this.crc32c,
    this.customerEncryptions,
    this.deletionPolicy,
    this.detectMd5hash,
    this.eventBasedHold,
    this.forceEmptyContentType,
    this.generation,
    this.id,
    this.kmsKeyName,
    this.md5hash,
    this.md5hexhash,
    this.mediaLink,
    this.metadata,
    this.name,
    this.outputName,
    this.retentions,
    this.selfLink,
    this.source,
    this.sourceMd5hash,
    this.storageClass,
    this.temporaryHold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'cacheControl': ?cacheControl,
      'content': ?content,
      'contentBase64': ?contentBase64,
      'contentBase64sha512': ?contentBase64sha512,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentHexsha512': ?contentHexsha512,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'contexts': ?(() { final guardedValue = contexts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectContentContext, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'crc32c': ?crc32c,
      'customerEncryptions': ?(() { final guardedValue = customerEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectContentCustomerEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'detectMd5hash': ?detectMd5hash,
      'eventBasedHold': ?eventBasedHold,
      'forceEmptyContentType': ?forceEmptyContentType,
      'generation': ?generation,
      'id': ?id,
      'kmsKeyName': ?kmsKeyName,
      'md5hash': ?md5hash,
      'md5hexhash': ?md5hexhash,
      'mediaLink': ?mediaLink,
      'metadata': ?metadata,
      'name': ?name,
      'outputName': ?outputName,
      'retentions': ?(() { final guardedValue = retentions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectContentRetention, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'source': ?source,
      'sourceMd5hash': ?sourceMd5hash,
      'storageClass': ?storageClass,
      'temporaryHold': ?temporaryHold,
    };
  }

  factory GetBucketObjectContentResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentBase64: (() { final guardedValue = map['contentBase64']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentBase64sha512: (() { final guardedValue = map['contentBase64sha512']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentHexsha512: (() { final guardedValue = map['contentHexsha512']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contexts: (() { final guardedValue = map['contexts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectContentContext>(guardedValue, (value) => GetBucketObjectContentContext.fromMap((value as Map).cast<String, dynamic>())); })(),
      crc32c: (() { final guardedValue = map['crc32c']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerEncryptions: (() { final guardedValue = map['customerEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectContentCustomerEncryption>(guardedValue, (value) => GetBucketObjectContentCustomerEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detectMd5hash: (() { final guardedValue = map['detectMd5hash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventBasedHold: (() { final guardedValue = map['eventBasedHold']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forceEmptyContentType: (() { final guardedValue = map['forceEmptyContentType']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      md5hash: (() { final guardedValue = map['md5hash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      md5hexhash: (() { final guardedValue = map['md5hexhash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mediaLink: (() { final guardedValue = map['mediaLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputName: (() { final guardedValue = map['outputName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentions: (() { final guardedValue = map['retentions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectContentRetention>(guardedValue, (value) => GetBucketObjectContentRetention.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceMd5hash: (() { final guardedValue = map['sourceMd5hash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      temporaryHold: (() { final guardedValue = map['temporaryHold']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
