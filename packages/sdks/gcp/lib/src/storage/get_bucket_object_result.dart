// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_context.dart';
import 'get_bucket_object_customer_encryption.dart';
import 'get_bucket_object_retention.dart';

/// Result data returned by getBucketObject.
class GetBucketObjectResult {
  final String? bucket;
  /// (Computed) [Cache-Control](https://tools.ietf.org/html/rfc7234#section-5.2)
  /// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  final String? cacheControl;
  final String? content;
  /// (Computed) [Content-Disposition](https://tools.ietf.org/html/rfc6266) of the object data.
  final String? contentDisposition;
  /// (Computed) [Content-Encoding](https://tools.ietf.org/html/rfc7231#section-3.1.2.2) of the object data.
  final String? contentEncoding;
  /// (Computed) [Content-Language](https://tools.ietf.org/html/rfc7231#section-3.1.3.2) of the object data.
  final String? contentLanguage;
  /// (Computed) [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
  final String? contentType;
  final List<GetBucketObjectContext>? contexts;
  /// (Computed) Base 64 CRC32 hash of the uploaded data.
  final String? crc32c;
  final List<GetBucketObjectCustomerEncryption>? customerEncryptions;
  final String? deletionPolicy;
  /// (Computed) Detect changes to local file or changes made outside of Terraform to the file stored on the server. MD5 hash of the data, encoded using [base64](https://datatracker.ietf.org/doc/html/rfc4648#section-4). This field is not present for [composite objects](https://cloud.google.com/storage/docs/composite-objects). For more information about using the MD5 hash, see [Hashes and ETags: Best Practices](https://cloud.google.com/storage/docs/hashes-etags#json-api).
  final String? detectMd5hash;
  /// (Computed) Whether an object is under [event-based hold](https://cloud.google.com/storage/docs/object-holds#hold-types). Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
  final bool? eventBasedHold;
  final bool? forceEmptyContentType;
  /// (Computed) The content generation of this object. Used for object [versioning](https://cloud.google.com/storage/docs/object-versioning) and [soft delete](https://cloud.google.com/storage/docs/soft-delete).
  final int? generation;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyName;
  /// (Computed) Base 64 MD5 hash of the uploaded data.
  final String? md5hash;
  final String? md5hexhash;
  /// (Computed) A url reference to download this object.
  final String? mediaLink;
  final Map<String, String>? metadata;
  final String? name;
  final String? outputName;
  final List<GetBucketObjectRetention>? retentions;
  /// (Computed) A url reference to this object.
  final String? selfLink;
  final String? source;
  final String? sourceMd5hash;
  /// (Computed) The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the new bucket object.
  /// Supported values include: `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`. If not provided, this defaults to the bucket's default
  /// storage class or to a [standard](https://cloud.google.com/storage/docs/storage-classes#standard) class.
  final String? storageClass;
  /// (Computed) Whether an object is under [temporary hold](https://cloud.google.com/storage/docs/object-holds#hold-types). While this flag is set to true, the object is protected against deletion and overwrites.
  final bool? temporaryHold;

  /// Creates a new [GetBucketObjectResult].
  /// [bucket] Optional.
  /// [cacheControl] (Computed) [Cache-Control](https://tools.ietf.org/html/rfc7234#section-5.2)
  /// [content] Optional.
  /// [contentDisposition] (Computed) [Content-Disposition](https://tools.ietf.org/html/rfc6266) of the object data.
  /// [contentEncoding] (Computed) [Content-Encoding](https://tools.ietf.org/html/rfc7231#section-3.1.2.2) of the object data.
  /// [contentLanguage] (Computed) [Content-Language](https://tools.ietf.org/html/rfc7231#section-3.1.3.2) of the object data.
  /// [contentType] (Computed) [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
  /// [contexts] Optional.
  /// [crc32c] (Computed) Base 64 CRC32 hash of the uploaded data.
  /// [customerEncryptions] Optional.
  /// [deletionPolicy] Optional.
  /// [detectMd5hash] (Computed) Detect changes to local file or changes made outside of Terraform to the file stored on the server. MD5 hash of the data, encoded using [base64](https://datatracker.ietf.org/doc/html/rfc4648#section-4). This field is not present for [composite objects](https://cloud.google.com/storage/docs/composite-objects). For more information about using the MD5 hash, see [Hashes and ETags: Best Practices](https://cloud.google.com/storage/docs/hashes-etags#json-api).
  /// [eventBasedHold] (Computed) Whether an object is under [event-based hold](https://cloud.google.com/storage/docs/object-holds#hold-types). Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
  /// [forceEmptyContentType] Optional.
  /// [generation] (Computed) The content generation of this object. Used for object [versioning](https://cloud.google.com/storage/docs/object-versioning) and [soft delete](https://cloud.google.com/storage/docs/soft-delete).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Optional.
  /// [md5hash] (Computed) Base 64 MD5 hash of the uploaded data.
  /// [md5hexhash] Optional.
  /// [mediaLink] (Computed) A url reference to download this object.
  /// [metadata] Optional.
  /// [name] Optional.
  /// [outputName] Optional.
  /// [retentions] Optional.
  /// [selfLink] (Computed) A url reference to this object.
  /// [source] Optional.
  /// [sourceMd5hash] Optional.
  /// [storageClass] (Computed) The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the new bucket object.
  /// [temporaryHold] (Computed) Whether an object is under [temporary hold](https://cloud.google.com/storage/docs/object-holds#hold-types). While this flag is set to true, the object is protected against deletion and overwrites.
  const GetBucketObjectResult({
    this.bucket,
    this.cacheControl,
    this.content,
    this.contentDisposition,
    this.contentEncoding,
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
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'contexts': ?(() { final guardedValue = contexts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectContext, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'crc32c': ?crc32c,
      'customerEncryptions': ?(() { final guardedValue = customerEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectCustomerEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      'retentions': ?(() { final guardedValue = retentions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectRetention, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'source': ?source,
      'sourceMd5hash': ?sourceMd5hash,
      'storageClass': ?storageClass,
      'temporaryHold': ?temporaryHold,
    };
  }

  factory GetBucketObjectResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contexts: (() { final guardedValue = map['contexts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectContext>(guardedValue, (value) => GetBucketObjectContext.fromMap((value as Map).cast<String, dynamic>())); })(),
      crc32c: (() { final guardedValue = map['crc32c']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerEncryptions: (() { final guardedValue = map['customerEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectCustomerEncryption>(guardedValue, (value) => GetBucketObjectCustomerEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
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
      retentions: (() { final guardedValue = map['retentions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectRetention>(guardedValue, (value) => GetBucketObjectRetention.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceMd5hash: (() { final guardedValue = map['sourceMd5hash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      temporaryHold: (() { final guardedValue = map['temporaryHold']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
