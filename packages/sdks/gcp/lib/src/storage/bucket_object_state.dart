// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_contexts.dart';
import 'bucket_object_customer_encryption.dart';
import 'bucket_object_retention.dart';

/// Input properties used for looking up and filtering BucketObject resources.
class BucketObjectState {
  /// The name of the containing bucket.
  final pulumi.Input<String>? bucket;
  /// [Cache-Control](https://tools.ietf.org/html/rfc7234#section-5.2)
  /// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  final pulumi.Input<String>? cacheControl;
  /// Data as `string` to be uploaded. Must be defined if `source` is not. **Note**: The `content` field is marked as sensitive.
  final pulumi.Input<String>? content;
  /// [Content-Disposition](https://tools.ietf.org/html/rfc6266) of the object data.
  final pulumi.Input<String>? contentDisposition;
  /// [Content-Encoding](https://tools.ietf.org/html/rfc7231#section-3.1.2.2) of the object data.
  final pulumi.Input<String>? contentEncoding;
  /// [Content-Language](https://tools.ietf.org/html/rfc7231#section-3.1.3.2) of the object data.
  final pulumi.Input<String>? contentLanguage;
  /// [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
  final pulumi.Input<String>? contentType;
  /// Contexts attached to an object, in key-value pairs. For more information about object contexts, see [Object contexts overview](https://cloud.google.com/storage/docs/object-contexts). Structure is documented below.
  final pulumi.Input<BucketObjectContexts>? contexts;
  /// (Computed) Base 64 CRC32 hash of the uploaded data.
  final pulumi.Input<String>? crc32c;
  /// Enables object encryption with Customer-Supplied Encryption Key (CSEK). Google [documentation about CSEK.](https://cloud.google.com/storage/docs/encryption/customer-supplied-keys)
  /// Structure is documented below.
  final pulumi.Input<BucketObjectCustomerEncryption>? customerEncryption;
  final pulumi.Input<String>? deletionPolicy;
  final pulumi.Input<String>? detectMd5hash;
  /// Whether an object is under [event-based hold](https://cloud.google.com/storage/docs/object-holds#hold-types). Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
  final pulumi.Input<bool>? eventBasedHold;
  /// When set to true, it ensure the object's Content-Type is empty.
  final pulumi.Input<bool>? forceEmptyContentType;
  /// (Computed) The content generation of this object. Used for object [versioning](https://cloud.google.com/storage/docs/object-versioning) and [soft delete](https://cloud.google.com/storage/docs/soft-delete).
  final pulumi.Input<int>? generation;
  /// The resource name of the Cloud KMS key that will be used to [encrypt](https://cloud.google.com/storage/docs/encryption/using-customer-managed-keys) the object.
  final pulumi.Input<String>? kmsKeyName;
  /// (Computed) Base 64 MD5 hash of the uploaded data.
  final pulumi.Input<String>? md5hash;
  /// (Computed) Hex value of md5hash`
  final pulumi.Input<String>? md5hexhash;
  /// (Computed) A url reference to download this object.
  final pulumi.Input<String>? mediaLink;
  /// User-provided metadata, in key/value pairs.
  ///
  /// One of the following is required:
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the object. If you're interpolating the name of this object, see `output_name` instead.
  final pulumi.Input<String>? name;
  /// (Computed) The name of the object. Use this field in interpolations with `gcp.storage.ObjectACL` to recreate
  /// `gcp.storage.ObjectACL` resources when your `gcp.storage.BucketObject` is recreated.
  final pulumi.Input<String>? outputName;
  /// The [object retention](http://cloud.google.com/storage/docs/object-lock) settings for the object. The retention settings allow an object to be retained until a provided date. Structure is documented below.
  final pulumi.Input<BucketObjectRetention>? retention;
  /// (Computed) A url reference to this object.
  final pulumi.Input<String>? selfLink;
  /// A path to the data you want to upload. Must be defined
  /// if `content` is not.
  ///
  /// - - -
  final pulumi.Input<dynamic>? source;
  /// User-provided md5hash to trigger replacement of object in storage bucket, Must be Base 64 MD5 hash of the object data. The usual way to set this is filemd5("file.zip"), where "file.zip" is the local filename
  final pulumi.Input<String>? sourceMd5hash;
  /// The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the new bucket object.
  /// Supported values include: `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`. If not provided, this defaults to the bucket's default
  /// storage class or to a [standard](https://cloud.google.com/storage/docs/storage-classes#standard) class.
  final pulumi.Input<String>? storageClass;
  /// Whether an object is under [temporary hold](https://cloud.google.com/storage/docs/object-holds#hold-types). While this flag is set to true, the object is protected against deletion and overwrites.
  final pulumi.Input<bool>? temporaryHold;

  /// Creates a new [BucketObjectState].
  /// [bucket] The name of the containing bucket.
  /// [cacheControl] [Cache-Control](https://tools.ietf.org/html/rfc7234#section-5.2)
  /// [content] Data as `string` to be uploaded. Must be defined if `source` is not. **Note**: The `content` field is marked as sensitive.
  /// [contentDisposition] [Content-Disposition](https://tools.ietf.org/html/rfc6266) of the object data.
  /// [contentEncoding] [Content-Encoding](https://tools.ietf.org/html/rfc7231#section-3.1.2.2) of the object data.
  /// [contentLanguage] [Content-Language](https://tools.ietf.org/html/rfc7231#section-3.1.3.2) of the object data.
  /// [contentType] [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
  /// [contexts] Contexts attached to an object, in key-value pairs. For more information about object contexts, see [Object contexts overview](https://cloud.google.com/storage/docs/object-contexts). Structure is documented below.
  /// [crc32c] (Computed) Base 64 CRC32 hash of the uploaded data.
  /// [customerEncryption] Enables object encryption with Customer-Supplied Encryption Key (CSEK). Google [documentation about CSEK.](https://cloud.google.com/storage/docs/encryption/customer-supplied-keys)
  /// [deletionPolicy] Optional.
  /// [detectMd5hash] Optional.
  /// [eventBasedHold] Whether an object is under [event-based hold](https://cloud.google.com/storage/docs/object-holds#hold-types). Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
  /// [forceEmptyContentType] When set to true, it ensure the object's Content-Type is empty.
  /// [generation] (Computed) The content generation of this object. Used for object [versioning](https://cloud.google.com/storage/docs/object-versioning) and [soft delete](https://cloud.google.com/storage/docs/soft-delete).
  /// [kmsKeyName] The resource name of the Cloud KMS key that will be used to [encrypt](https://cloud.google.com/storage/docs/encryption/using-customer-managed-keys) the object.
  /// [md5hash] (Computed) Base 64 MD5 hash of the uploaded data.
  /// [md5hexhash] (Computed) Hex value of md5hash`
  /// [mediaLink] (Computed) A url reference to download this object.
  /// [metadata] User-provided metadata, in key/value pairs.
  /// [name] The name of the object. If you're interpolating the name of this object, see `output_name` instead.
  /// [outputName] (Computed) The name of the object. Use this field in interpolations with `gcp.storage.ObjectACL` to recreate
  /// [retention] The [object retention](http://cloud.google.com/storage/docs/object-lock) settings for the object. The retention settings allow an object to be retained until a provided date. Structure is documented below.
  /// [selfLink] (Computed) A url reference to this object.
  /// [source] A path to the data you want to upload. Must be defined
  /// [sourceMd5hash] User-provided md5hash to trigger replacement of object in storage bucket, Must be Base 64 MD5 hash of the object data. The usual way to set this is filemd5("file.zip"), where "file.zip" is the local filename
  /// [storageClass] The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the new bucket object.
  /// [temporaryHold] Whether an object is under [temporary hold](https://cloud.google.com/storage/docs/object-holds#hold-types). While this flag is set to true, the object is protected against deletion and overwrites.
  BucketObjectState({
    this.bucket,
    this.cacheControl,
    this.content,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.contexts,
    this.crc32c,
    this.customerEncryption,
    this.deletionPolicy,
    this.detectMd5hash,
    this.eventBasedHold,
    this.forceEmptyContentType,
    this.generation,
    this.kmsKeyName,
    this.md5hash,
    this.md5hexhash,
    this.mediaLink,
    this.metadata,
    this.name,
    this.outputName,
    this.retention,
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
      'contexts': ?pulumi.Input.mapOptionalInputValue<BucketObjectContexts, Map<String, dynamic>>(contexts, (value) => value.toMap()),
      'crc32c': ?crc32c,
      'customerEncryption': ?pulumi.Input.mapOptionalInputValue<BucketObjectCustomerEncryption, Map<String, dynamic>>(customerEncryption, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'detectMd5hash': ?detectMd5hash,
      'eventBasedHold': ?eventBasedHold,
      'forceEmptyContentType': ?forceEmptyContentType,
      'generation': ?generation,
      'kmsKeyName': ?kmsKeyName,
      'md5hash': ?md5hash,
      'md5hexhash': ?md5hexhash,
      'mediaLink': ?mediaLink,
      'metadata': ?metadata,
      'name': ?name,
      'outputName': ?outputName,
      'retention': ?pulumi.Input.mapOptionalInputValue<BucketObjectRetention, Map<String, dynamic>>(retention, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'source': ?source,
      'sourceMd5hash': ?sourceMd5hash,
      'storageClass': ?storageClass,
      'temporaryHold': ?temporaryHold,
    };
  }

  factory BucketObjectState.fromMap(Map<String, dynamic> map) {
    return BucketObjectState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      cacheControl: map['cacheControl'] == null ? null : (map['cacheControl'] as String).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      contentDisposition: map['contentDisposition'] == null ? null : (map['contentDisposition'] as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding'] as String).input(),
      contentLanguage: map['contentLanguage'] == null ? null : (map['contentLanguage'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      contexts: map['contexts'] == null ? null : (BucketObjectContexts.fromMap((map['contexts'] as Map).cast<String, dynamic>())).input(),
      crc32c: map['crc32c'] == null ? null : (map['crc32c'] as String).input(),
      customerEncryption: map['customerEncryption'] == null ? null : (BucketObjectCustomerEncryption.fromMap((map['customerEncryption'] as Map).cast<String, dynamic>())).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy'] as String).input(),
      detectMd5hash: map['detectMd5hash'] == null ? null : (map['detectMd5hash'] as String).input(),
      eventBasedHold: map['eventBasedHold'] == null ? null : (map['eventBasedHold'] as bool).input(),
      forceEmptyContentType: map['forceEmptyContentType'] == null ? null : (map['forceEmptyContentType'] as bool).input(),
      generation: map['generation'] == null ? null : (map['generation'] as int).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      md5hash: map['md5hash'] == null ? null : (map['md5hash'] as String).input(),
      md5hexhash: map['md5hexhash'] == null ? null : (map['md5hexhash'] as String).input(),
      mediaLink: map['mediaLink'] == null ? null : (map['mediaLink'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outputName: map['outputName'] == null ? null : (map['outputName'] as String).input(),
      retention: map['retention'] == null ? null : (BucketObjectRetention.fromMap((map['retention'] as Map).cast<String, dynamic>())).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      source: map['source'] == null ? null : (map['source']).input(),
      sourceMd5hash: map['sourceMd5hash'] == null ? null : (map['sourceMd5hash'] as String).input(),
      storageClass: map['storageClass'] == null ? null : (map['storageClass'] as String).input(),
      temporaryHold: map['temporaryHold'] == null ? null : (map['temporaryHold'] as bool).input(),
    );
  }
}

