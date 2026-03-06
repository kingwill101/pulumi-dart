// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_customer_encryption.dart';
import 'bucket_object_owner.dart';
import 'bucket_object_retention.dart';
import 'object_access_control_storage_v1.dart';

/// {@template pulumi_storage_v1_bucket_object_args_doc}
/// The set of arguments for BucketObject.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_bucket_object_args_doc}
class BucketObjectArgs {
  /// Access controls on the object.
  final pulumi.Input<List<ObjectAccessControlStorageV1>>? acl;
  /// The name of the bucket containing this object.
  final pulumi.Input<String> bucket;
  /// Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
  final pulumi.Input<String>? cacheControl;
  /// Number of underlying components that make up this object. Components are accumulated by compose operations.
  final pulumi.Input<int>? componentCount;
  /// Content-Disposition of the object data.
  final pulumi.Input<String>? contentDisposition;
  /// Content-Encoding of the object data.
  final pulumi.Input<String>? contentEncoding;
  /// Content-Language of the object data.
  final pulumi.Input<String>? contentLanguage;
  /// Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
  final pulumi.Input<String>? contentType;
  /// CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
  final pulumi.Input<String>? crc32c;
  /// A timestamp in RFC 3339 format specified by the user for an object.
  final pulumi.Input<String>? customTime;
  /// Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  final pulumi.Input<BucketObjectCustomerEncryption>? customerEncryption;
  /// HTTP 1.1 Entity tag for the object.
  final pulumi.Input<String>? etag;
  /// Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
  final pulumi.Input<bool>? eventBasedHold;
  /// The content generation of this object. Used for object versioning.
  final pulumi.Input<String>? generation;
  /// This is the time (in the future) when the soft-deleted object will no longer be restorable. It is equal to the soft delete time plus the current soft delete retention duration of the bucket.
  final pulumi.Input<String>? hardDeleteTime;
  /// The ID of the object, including the bucket name, object name, and generation number.
  final pulumi.Input<String>? id;
  /// Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  final pulumi.Input<String>? ifGenerationMatch;
  /// Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  final pulumi.Input<String>? ifGenerationNotMatch;
  /// Makes the operation conditional on whether the object's current metageneration matches the given value.
  final pulumi.Input<String>? ifMetagenerationMatch;
  /// Makes the operation conditional on whether the object's current metageneration does not match the given value.
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  /// The kind of item this is. For objects, this is always storage#object.
  final pulumi.Input<String>? kind;
  /// Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
  final pulumi.Input<String>? kmsKeyName;
  /// MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  final pulumi.Input<String>? md5Hash;
  /// Media download link.
  final pulumi.Input<String>? mediaLink;
  /// User-provided metadata, in key/value pairs.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  final pulumi.Input<String>? metageneration;
  /// The name of the object. Required if not specified by URL parameter.
  final pulumi.Input<String>? name;
  /// The owner of the object. This will always be the uploader of the object.
  final pulumi.Input<BucketObjectOwner>? owner;
  /// Apply a predefined set of access controls to this object.
  final pulumi.Input<String>? predefinedAcl;
  /// Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  final pulumi.Input<String>? projection;
  /// A collection of object level retention parameters.
  final pulumi.Input<BucketObjectRetention>? retention;
  /// A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  final pulumi.Input<String>? retentionExpirationTime;
  /// The link to this object.
  final pulumi.Input<String>? selfLink;
  /// Content-Length of the data in bytes.
  final pulumi.Input<String>? size;
  /// The time at which the object became soft-deleted in RFC 3339 format.
  final pulumi.Input<String>? softDeleteTime;
  final pulumi.Input<dynamic>? source;
  /// Storage class of the object.
  final pulumi.Input<String>? storageClass;
  /// Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  final pulumi.Input<bool>? temporaryHold;
  /// The creation time of the object in RFC 3339 format.
  final pulumi.Input<String>? timeCreated;
  /// The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  final pulumi.Input<String>? timeDeleted;
  /// The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  final pulumi.Input<String>? timeStorageClassUpdated;
  /// The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.
  final pulumi.Input<String>? updated;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  /// Creates a new [BucketObjectArgs].
  /// [acl] Access controls on the object.
  /// [bucket] The name of the bucket containing this object.
  /// [cacheControl] Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
  /// [componentCount] Number of underlying components that make up this object. Components are accumulated by compose operations.
  /// [contentDisposition] Content-Disposition of the object data.
  /// [contentEncoding] Content-Encoding of the object data.
  /// [contentLanguage] Content-Language of the object data.
  /// [contentType] Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
  /// [crc32c] CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
  /// [customTime] A timestamp in RFC 3339 format specified by the user for an object.
  /// [customerEncryption] Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  /// [etag] HTTP 1.1 Entity tag for the object.
  /// [eventBasedHold] Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
  /// [generation] The content generation of this object. Used for object versioning.
  /// [hardDeleteTime] This is the time (in the future) when the soft-deleted object will no longer be restorable. It is equal to the soft delete time plus the current soft delete retention duration of the bucket.
  /// [id] The ID of the object, including the bucket name, object name, and generation number.
  /// [ifGenerationMatch] Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  /// [ifGenerationNotMatch] Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  /// [ifMetagenerationMatch] Makes the operation conditional on whether the object's current metageneration matches the given value.
  /// [ifMetagenerationNotMatch] Makes the operation conditional on whether the object's current metageneration does not match the given value.
  /// [kind] The kind of item this is. For objects, this is always storage#object.
  /// [kmsKeyName] Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
  /// [md5Hash] MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  /// [mediaLink] Media download link.
  /// [metadata] User-provided metadata, in key/value pairs.
  /// [metageneration] The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  /// [name] The name of the object. Required if not specified by URL parameter.
  /// [owner] The owner of the object. This will always be the uploader of the object.
  /// [predefinedAcl] Apply a predefined set of access controls to this object.
  /// [projection] Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  /// [retention] A collection of object level retention parameters.
  /// [retentionExpirationTime] A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  /// [selfLink] The link to this object.
  /// [size] Content-Length of the data in bytes.
  /// [softDeleteTime] The time at which the object became soft-deleted in RFC 3339 format.
  /// [source] Optional.
  /// [storageClass] Storage class of the object.
  /// [temporaryHold] Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  /// [timeCreated] The creation time of the object in RFC 3339 format.
  /// [timeDeleted] The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  /// [timeStorageClassUpdated] The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  /// [updated] The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  const BucketObjectArgs({
    this.acl,
    required this.bucket,
    this.cacheControl,
    this.componentCount,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.crc32c,
    this.customTime,
    this.customerEncryption,
    this.etag,
    this.eventBasedHold,
    this.generation,
    this.hardDeleteTime,
    this.id,
    this.ifGenerationMatch,
    this.ifGenerationNotMatch,
    this.ifMetagenerationMatch,
    this.ifMetagenerationNotMatch,
    this.kind,
    this.kmsKeyName,
    this.md5Hash,
    this.mediaLink,
    this.metadata,
    this.metageneration,
    this.name,
    this.owner,
    this.predefinedAcl,
    this.projection,
    this.retention,
    this.retentionExpirationTime,
    this.selfLink,
    this.size,
    this.softDeleteTime,
    this.source,
    this.storageClass,
    this.temporaryHold,
    this.timeCreated,
    this.timeDeleted,
    this.timeStorageClassUpdated,
    this.updated,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucket': bucket,
      'cacheControl': ?cacheControl,
      'componentCount': ?componentCount,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'crc32c': ?crc32c,
      'customTime': ?customTime,
      'customerEncryption': ?pulumi.Input.mapOptionalInputValue<BucketObjectCustomerEncryption, Map<String, dynamic>>(customerEncryption, (value) => value.toMap()),
      'etag': ?etag,
      'eventBasedHold': ?eventBasedHold,
      'generation': ?generation,
      'hardDeleteTime': ?hardDeleteTime,
      'id': ?id,
      'ifGenerationMatch': ?ifGenerationMatch,
      'ifGenerationNotMatch': ?ifGenerationNotMatch,
      'ifMetagenerationMatch': ?ifMetagenerationMatch,
      'ifMetagenerationNotMatch': ?ifMetagenerationNotMatch,
      'kind': ?kind,
      'kmsKeyName': ?kmsKeyName,
      'md5Hash': ?md5Hash,
      'mediaLink': ?mediaLink,
      'metadata': ?metadata,
      'metageneration': ?metageneration,
      'name': ?name,
      'owner': ?pulumi.Input.mapOptionalInputValue<BucketObjectOwner, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'predefinedAcl': ?predefinedAcl,
      'projection': ?projection,
      'retention': ?pulumi.Input.mapOptionalInputValue<BucketObjectRetention, Map<String, dynamic>>(retention, (value) => value.toMap()),
      'retentionExpirationTime': ?retentionExpirationTime,
      'selfLink': ?selfLink,
      'size': ?size,
      'softDeleteTime': ?softDeleteTime,
      'source': ?source,
      'storageClass': ?storageClass,
      'temporaryHold': ?temporaryHold,
      'timeCreated': ?timeCreated,
      'timeDeleted': ?timeDeleted,
      'timeStorageClassUpdated': ?timeStorageClassUpdated,
      'updated': ?updated,
      'userProject': ?userProject,
    };
  }

  factory BucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return BucketObjectArgs(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<ObjectAccessControlStorageV1>()); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      componentCount: (() { final guardedValue = map['componentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crc32c: (() { final guardedValue = map['crc32c']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customTime: (() { final guardedValue = map['customTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEncryption: (() { final guardedValue = map['customerEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketObjectCustomerEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventBasedHold: (() { final guardedValue = map['eventBasedHold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardDeleteTime: (() { final guardedValue = map['hardDeleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifGenerationMatch: (() { final guardedValue = map['ifGenerationMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifGenerationNotMatch: (() { final guardedValue = map['ifGenerationNotMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifMetagenerationMatch: (() { final guardedValue = map['ifMetagenerationMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifMetagenerationNotMatch: (() { final guardedValue = map['ifMetagenerationNotMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      md5Hash: (() { final guardedValue = map['md5Hash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mediaLink: (() { final guardedValue = map['mediaLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metageneration: (() { final guardedValue = map['metageneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketObjectOwner.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predefinedAcl: (() { final guardedValue = map['predefinedAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projection: (() { final guardedValue = map['projection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketObjectRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionExpirationTime: (() { final guardedValue = map['retentionExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softDeleteTime: (() { final guardedValue = map['softDeleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      temporaryHold: (() { final guardedValue = map['temporaryHold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeDeleted: (() { final guardedValue = map['timeDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeStorageClassUpdated: (() { final guardedValue = map['timeStorageClassUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

