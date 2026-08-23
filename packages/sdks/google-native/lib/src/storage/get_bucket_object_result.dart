// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_customer_encryption_response.dart';
import 'bucket_object_owner_response.dart';
import 'bucket_object_retention_response.dart';
import 'object_access_control_response.dart';

/// Result data returned by getBucketObject.
class GetBucketObjectResult {
  /// Access controls on the object.
  final List<ObjectAccessControlResponse> acl;
  /// The name of the bucket containing this object.
  final String bucket;
  /// Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
  final String cacheControl;
  /// Number of underlying components that make up this object. Components are accumulated by compose operations.
  final int componentCount;
  /// Content-Disposition of the object data.
  final String contentDisposition;
  /// Content-Encoding of the object data.
  final String contentEncoding;
  /// Content-Language of the object data.
  final String contentLanguage;
  /// Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
  final String contentType;
  /// CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
  final String crc32c;
  /// A timestamp in RFC 3339 format specified by the user for an object.
  final String customTime;
  /// Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  final BucketObjectCustomerEncryptionResponse customerEncryption;
  /// HTTP 1.1 Entity tag for the object.
  final String etag;
  /// Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
  final bool eventBasedHold;
  /// The content generation of this object. Used for object versioning.
  final String generation;
  /// This is the time (in the future) when the soft-deleted object will no longer be restorable. It is equal to the soft delete time plus the current soft delete retention duration of the bucket.
  final String hardDeleteTime;
  /// The kind of item this is. For objects, this is always storage#object.
  final String kind;
  /// Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
  final String kmsKeyName;
  /// MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  final String md5Hash;
  /// Media download link.
  final String mediaLink;
  /// User-provided metadata, in key/value pairs.
  final Map<String, String> metadata;
  /// The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  final String metageneration;
  /// The name of the object. Required if not specified by URL parameter.
  final String name;
  /// The owner of the object. This will always be the uploader of the object.
  final BucketObjectOwnerResponse owner;
  /// A collection of object level retention parameters.
  final BucketObjectRetentionResponse retention;
  /// A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  final String retentionExpirationTime;
  /// The link to this object.
  final String selfLink;
  /// Content-Length of the data in bytes.
  final String size;
  /// The time at which the object became soft-deleted in RFC 3339 format.
  final String softDeleteTime;
  /// Storage class of the object.
  final String storageClass;
  /// Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  final bool temporaryHold;
  /// The creation time of the object in RFC 3339 format.
  final String timeCreated;
  /// The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  final String timeDeleted;
  /// The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  final String timeStorageClassUpdated;
  /// The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.
  final String updated;

  /// Creates a new [GetBucketObjectResult].
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
  /// [kind] The kind of item this is. For objects, this is always storage#object.
  /// [kmsKeyName] Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
  /// [md5Hash] MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  /// [mediaLink] Media download link.
  /// [metadata] User-provided metadata, in key/value pairs.
  /// [metageneration] The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  /// [name] The name of the object. Required if not specified by URL parameter.
  /// [owner] The owner of the object. This will always be the uploader of the object.
  /// [retention] A collection of object level retention parameters.
  /// [retentionExpirationTime] A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  /// [selfLink] The link to this object.
  /// [size] Content-Length of the data in bytes.
  /// [softDeleteTime] The time at which the object became soft-deleted in RFC 3339 format.
  /// [storageClass] Storage class of the object.
  /// [temporaryHold] Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  /// [timeCreated] The creation time of the object in RFC 3339 format.
  /// [timeDeleted] The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  /// [timeStorageClassUpdated] The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  /// [updated] The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.
  const GetBucketObjectResult({
    required this.acl,
    required this.bucket,
    required this.cacheControl,
    required this.componentCount,
    required this.contentDisposition,
    required this.contentEncoding,
    required this.contentLanguage,
    required this.contentType,
    required this.crc32c,
    required this.customTime,
    required this.customerEncryption,
    required this.etag,
    required this.eventBasedHold,
    required this.generation,
    required this.hardDeleteTime,
    required this.kind,
    required this.kmsKeyName,
    required this.md5Hash,
    required this.mediaLink,
    required this.metadata,
    required this.metageneration,
    required this.name,
    required this.owner,
    required this.retention,
    required this.retentionExpirationTime,
    required this.selfLink,
    required this.size,
    required this.softDeleteTime,
    required this.storageClass,
    required this.temporaryHold,
    required this.timeCreated,
    required this.timeDeleted,
    required this.timeStorageClassUpdated,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': pulumi.Input.encodeList<ObjectAccessControlResponse, Map<String, dynamic>>(acl, (value) => value.toMap()),
      'bucket': bucket,
      'cacheControl': cacheControl,
      'componentCount': componentCount,
      'contentDisposition': contentDisposition,
      'contentEncoding': contentEncoding,
      'contentLanguage': contentLanguage,
      'contentType': contentType,
      'crc32c': crc32c,
      'customTime': customTime,
      'customerEncryption': customerEncryption.toMap(),
      'etag': etag,
      'eventBasedHold': eventBasedHold,
      'generation': generation,
      'hardDeleteTime': hardDeleteTime,
      'kind': kind,
      'kmsKeyName': kmsKeyName,
      'md5Hash': md5Hash,
      'mediaLink': mediaLink,
      'metadata': metadata,
      'metageneration': metageneration,
      'name': name,
      'owner': owner.toMap(),
      'retention': retention.toMap(),
      'retentionExpirationTime': retentionExpirationTime,
      'selfLink': selfLink,
      'size': size,
      'softDeleteTime': softDeleteTime,
      'storageClass': storageClass,
      'temporaryHold': temporaryHold,
      'timeCreated': timeCreated,
      'timeDeleted': timeDeleted,
      'timeStorageClassUpdated': timeStorageClassUpdated,
      'updated': updated,
    };
  }

  factory GetBucketObjectResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectResult(
      acl: pulumi.Input.decodeList<ObjectAccessControlResponse>(map['acl']!, (value) => ObjectAccessControlResponse.fromMap((value as Map).cast<String, dynamic>())),
      bucket: map['bucket'] as String,
      cacheControl: map['cacheControl'] as String,
      componentCount: map['componentCount'] as int,
      contentDisposition: map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] as String,
      contentType: map['contentType'] as String,
      crc32c: map['crc32c'] as String,
      customTime: map['customTime'] as String,
      customerEncryption: BucketObjectCustomerEncryptionResponse.fromMap((map['customerEncryption']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      eventBasedHold: map['eventBasedHold'] as bool,
      generation: map['generation'] as String,
      hardDeleteTime: map['hardDeleteTime'] as String,
      kind: map['kind'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      md5Hash: map['md5Hash'] as String,
      mediaLink: map['mediaLink'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      metageneration: map['metageneration'] as String,
      name: map['name'] as String,
      owner: BucketObjectOwnerResponse.fromMap((map['owner']! as Map).cast<String, dynamic>()),
      retention: BucketObjectRetentionResponse.fromMap((map['retention']! as Map).cast<String, dynamic>()),
      retentionExpirationTime: map['retentionExpirationTime'] as String,
      selfLink: map['selfLink'] as String,
      size: map['size'] as String,
      softDeleteTime: map['softDeleteTime'] as String,
      storageClass: map['storageClass'] as String,
      temporaryHold: map['temporaryHold'] as bool,
      timeCreated: map['timeCreated'] as String,
      timeDeleted: map['timeDeleted'] as String,
      timeStorageClassUpdated: map['timeStorageClassUpdated'] as String,
      updated: map['updated'] as String,
    );
  }
}
