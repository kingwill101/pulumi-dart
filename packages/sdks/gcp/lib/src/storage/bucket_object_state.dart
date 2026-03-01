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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? cacheControl,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentDisposition,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<String>? contentLanguage,
    pulumi.Output<String>? contentType,
    pulumi.Output<BucketObjectContexts>? contexts,
    pulumi.Output<String>? crc32c,
    pulumi.Output<BucketObjectCustomerEncryption>? customerEncryption,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? detectMd5hash,
    pulumi.Output<bool>? eventBasedHold,
    pulumi.Output<bool>? forceEmptyContentType,
    pulumi.Output<int>? generation,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? md5hash,
    pulumi.Output<String>? md5hexhash,
    pulumi.Output<String>? mediaLink,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? outputName,
    pulumi.Output<BucketObjectRetention>? retention,
    pulumi.Output<String>? selfLink,
    pulumi.Output<dynamic>? source,
    pulumi.Output<String>? sourceMd5hash,
    pulumi.Output<String>? storageClass,
    pulumi.Output<bool>? temporaryHold,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentDisposition = pulumi.Input.asOptionalInput<String>(contentDisposition),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      contentLanguage = pulumi.Input.asOptionalInput<String>(contentLanguage),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      contexts = pulumi.Input.asOptionalInput<BucketObjectContexts>(contexts),
      crc32c = pulumi.Input.asOptionalInput<String>(crc32c),
      customerEncryption = pulumi.Input.asOptionalInput<BucketObjectCustomerEncryption>(customerEncryption),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      detectMd5hash = pulumi.Input.asOptionalInput<String>(detectMd5hash),
      eventBasedHold = pulumi.Input.asOptionalInput<bool>(eventBasedHold),
      forceEmptyContentType = pulumi.Input.asOptionalInput<bool>(forceEmptyContentType),
      generation = pulumi.Input.asOptionalInput<int>(generation),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      md5hash = pulumi.Input.asOptionalInput<String>(md5hash),
      md5hexhash = pulumi.Input.asOptionalInput<String>(md5hexhash),
      mediaLink = pulumi.Input.asOptionalInput<String>(mediaLink),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputName = pulumi.Input.asOptionalInput<String>(outputName),
      retention = pulumi.Input.asOptionalInput<BucketObjectRetention>(retention),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      source = pulumi.Input.asOptionalInput<dynamic>(source),
      sourceMd5hash = pulumi.Input.asOptionalInput<String>(sourceMd5hash),
      storageClass = pulumi.Input.asOptionalInput<String>(storageClass),
      temporaryHold = pulumi.Input.asOptionalInput<bool>(temporaryHold);

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
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      cacheControl: map['cacheControl'] == null ? null : pulumi.Output.create<String>(map['cacheControl'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentDisposition: map['contentDisposition'] == null ? null : pulumi.Output.create<String>(map['contentDisposition'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      contentLanguage: map['contentLanguage'] == null ? null : pulumi.Output.create<String>(map['contentLanguage'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      contexts: map['contexts'] == null ? null : pulumi.Output.create<BucketObjectContexts>(BucketObjectContexts.fromMap((map['contexts'] as Map).cast<String, dynamic>())),
      crc32c: map['crc32c'] == null ? null : pulumi.Output.create<String>(map['crc32c'] as String),
      customerEncryption: map['customerEncryption'] == null ? null : pulumi.Output.create<BucketObjectCustomerEncryption>(BucketObjectCustomerEncryption.fromMap((map['customerEncryption'] as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      detectMd5hash: map['detectMd5hash'] == null ? null : pulumi.Output.create<String>(map['detectMd5hash'] as String),
      eventBasedHold: map['eventBasedHold'] == null ? null : pulumi.Output.create<bool>(map['eventBasedHold'] as bool),
      forceEmptyContentType: map['forceEmptyContentType'] == null ? null : pulumi.Output.create<bool>(map['forceEmptyContentType'] as bool),
      generation: map['generation'] == null ? null : pulumi.Output.create<int>(map['generation'] as int),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      md5hash: map['md5hash'] == null ? null : pulumi.Output.create<String>(map['md5hash'] as String),
      md5hexhash: map['md5hexhash'] == null ? null : pulumi.Output.create<String>(map['md5hexhash'] as String),
      mediaLink: map['mediaLink'] == null ? null : pulumi.Output.create<String>(map['mediaLink'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputName: map['outputName'] == null ? null : pulumi.Output.create<String>(map['outputName'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<BucketObjectRetention>(BucketObjectRetention.fromMap((map['retention'] as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<dynamic>(map['source']),
      sourceMd5hash: map['sourceMd5hash'] == null ? null : pulumi.Output.create<String>(map['sourceMd5hash'] as String),
      storageClass: map['storageClass'] == null ? null : pulumi.Output.create<String>(map['storageClass'] as String),
      temporaryHold: map['temporaryHold'] == null ? null : pulumi.Output.create<bool>(map['temporaryHold'] as bool),
    );
  }
}

