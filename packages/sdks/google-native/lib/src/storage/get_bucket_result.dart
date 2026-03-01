// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_control_response.dart';
import 'bucket_autoclass_response.dart';
import 'bucket_billing_response.dart';
import 'bucket_cors_item_response.dart';
import 'bucket_custom_placement_config_response.dart';
import 'bucket_encryption_response.dart';
import 'bucket_iam_configuration_response.dart';
import 'bucket_lifecycle_response.dart';
import 'bucket_logging_response.dart';
import 'bucket_object_retention_response.dart';
import 'bucket_owner_response.dart';
import 'bucket_retention_policy_response.dart';
import 'bucket_soft_delete_policy_response.dart';
import 'bucket_versioning_response.dart';
import 'bucket_website_response.dart';
import 'object_access_control_response.dart';

/// Result data returned by getBucket.
class GetBucketResult {
  /// Access controls on the bucket.
  final List<BucketAccessControlResponse> acl;
  /// The bucket's Autoclass configuration.
  final BucketAutoclassResponse autoclass;
  /// The bucket's billing configuration.
  final BucketBillingResponse billing;
  /// The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  final List<BucketCorsItemResponse> cors;
  /// The bucket's custom placement configuration for Custom Dual Regions.
  final BucketCustomPlacementConfigResponse customPlacementConfig;
  /// The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
  final bool defaultEventBasedHold;
  /// Default access controls to apply to new objects when no ACL is provided.
  final List<ObjectAccessControlResponse> defaultObjectAcl;
  /// Encryption configuration for a bucket.
  final BucketEncryptionResponse encryption;
  /// HTTP 1.1 Entity tag for the bucket.
  final String etag;
  /// The bucket's IAM configuration.
  final BucketIamConfigurationResponse iamConfiguration;
  /// The kind of item this is. For buckets, this is always storage#bucket.
  final String kind;
  /// User-provided labels, in key/value pairs.
  final Map<String, String> labels;
  /// The bucket's lifecycle configuration. See lifecycle management for more information.
  final BucketLifecycleResponse lifecycle;
  /// The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
  final String location;
  /// The type of the bucket location.
  final String locationType;
  /// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  final BucketLoggingResponse logging;
  /// The metadata generation of this bucket.
  final String metageneration;
  /// The name of the bucket.
  final String name;
  /// The bucket's object retention config.
  final BucketObjectRetentionResponse objectRetention;
  /// The owner of the bucket. This is always the project team's owner group.
  final BucketOwnerResponse owner;
  /// The project number of the project the bucket belongs to.
  final String projectNumber;
  /// The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.
  final BucketRetentionPolicyResponse retentionPolicy;
  /// The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
  final String rpo;
  /// Reserved for future use.
  final bool satisfiesPZS;
  /// The URI of this bucket.
  final String selfLink;
  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
  final BucketSoftDeletePolicyResponse softDeletePolicy;
  /// The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
  final String storageClass;
  /// The creation time of the bucket in RFC 3339 format.
  final String timeCreated;
  /// The modification time of the bucket in RFC 3339 format.
  final String updated;
  /// The bucket's versioning configuration.
  final BucketVersioningResponse versioning;
  /// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
  final BucketWebsiteResponse website;

  /// Creates a new [GetBucketResult].
  /// [acl] Access controls on the bucket.
  /// [autoclass] The bucket's Autoclass configuration.
  /// [billing] The bucket's billing configuration.
  /// [cors] The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  /// [customPlacementConfig] The bucket's custom placement configuration for Custom Dual Regions.
  /// [defaultEventBasedHold] The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
  /// [defaultObjectAcl] Default access controls to apply to new objects when no ACL is provided.
  /// [encryption] Encryption configuration for a bucket.
  /// [etag] HTTP 1.1 Entity tag for the bucket.
  /// [iamConfiguration] The bucket's IAM configuration.
  /// [kind] The kind of item this is. For buckets, this is always storage#bucket.
  /// [labels] User-provided labels, in key/value pairs.
  /// [lifecycle] The bucket's lifecycle configuration. See lifecycle management for more information.
  /// [location] The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
  /// [locationType] The type of the bucket location.
  /// [logging] The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  /// [metageneration] The metadata generation of this bucket.
  /// [name] The name of the bucket.
  /// [objectRetention] The bucket's object retention config.
  /// [owner] The owner of the bucket. This is always the project team's owner group.
  /// [projectNumber] The project number of the project the bucket belongs to.
  /// [retentionPolicy] The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.
  /// [rpo] The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
  /// [satisfiesPZS] Reserved for future use.
  /// [selfLink] The URI of this bucket.
  /// [softDeletePolicy] The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
  /// [storageClass] The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
  /// [timeCreated] The creation time of the bucket in RFC 3339 format.
  /// [updated] The modification time of the bucket in RFC 3339 format.
  /// [versioning] The bucket's versioning configuration.
  /// [website] The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
  GetBucketResult({
    required this.acl,
    required this.autoclass,
    required this.billing,
    required this.cors,
    required this.customPlacementConfig,
    required this.defaultEventBasedHold,
    required this.defaultObjectAcl,
    required this.encryption,
    required this.etag,
    required this.iamConfiguration,
    required this.kind,
    required this.labels,
    required this.lifecycle,
    required this.location,
    required this.locationType,
    required this.logging,
    required this.metageneration,
    required this.name,
    required this.objectRetention,
    required this.owner,
    required this.projectNumber,
    required this.retentionPolicy,
    required this.rpo,
    required this.satisfiesPZS,
    required this.selfLink,
    required this.softDeletePolicy,
    required this.storageClass,
    required this.timeCreated,
    required this.updated,
    required this.versioning,
    required this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': pulumi.Input.encodeList<BucketAccessControlResponse, Map<String, dynamic>>(acl, (value) => value.toMap()),
      'autoclass': autoclass.toMap(),
      'billing': billing.toMap(),
      'cors': pulumi.Input.encodeList<BucketCorsItemResponse, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'customPlacementConfig': customPlacementConfig.toMap(),
      'defaultEventBasedHold': defaultEventBasedHold,
      'defaultObjectAcl': pulumi.Input.encodeList<ObjectAccessControlResponse, Map<String, dynamic>>(defaultObjectAcl, (value) => value.toMap()),
      'encryption': encryption.toMap(),
      'etag': etag,
      'iamConfiguration': iamConfiguration.toMap(),
      'kind': kind,
      'labels': labels,
      'lifecycle': lifecycle.toMap(),
      'location': location,
      'locationType': locationType,
      'logging': logging.toMap(),
      'metageneration': metageneration,
      'name': name,
      'objectRetention': objectRetention.toMap(),
      'owner': owner.toMap(),
      'projectNumber': projectNumber,
      'retentionPolicy': retentionPolicy.toMap(),
      'rpo': rpo,
      'satisfiesPZS': satisfiesPZS,
      'selfLink': selfLink,
      'softDeletePolicy': softDeletePolicy.toMap(),
      'storageClass': storageClass,
      'timeCreated': timeCreated,
      'updated': updated,
      'versioning': versioning.toMap(),
      'website': website.toMap(),
    };
  }

  factory GetBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBucketResult(
      acl: pulumi.Input.decodeList<BucketAccessControlResponse>(map['acl'], (value) => BucketAccessControlResponse.fromMap((value as Map).cast<String, dynamic>())),
      autoclass: BucketAutoclassResponse.fromMap((map['autoclass'] as Map).cast<String, dynamic>()),
      billing: BucketBillingResponse.fromMap((map['billing'] as Map).cast<String, dynamic>()),
      cors: pulumi.Input.decodeList<BucketCorsItemResponse>(map['cors'], (value) => BucketCorsItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      customPlacementConfig: BucketCustomPlacementConfigResponse.fromMap((map['customPlacementConfig'] as Map).cast<String, dynamic>()),
      defaultEventBasedHold: map['defaultEventBasedHold'] as bool,
      defaultObjectAcl: pulumi.Input.decodeList<ObjectAccessControlResponse>(map['defaultObjectAcl'], (value) => ObjectAccessControlResponse.fromMap((value as Map).cast<String, dynamic>())),
      encryption: BucketEncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      iamConfiguration: BucketIamConfigurationResponse.fromMap((map['iamConfiguration'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lifecycle: BucketLifecycleResponse.fromMap((map['lifecycle'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      locationType: map['locationType'] as String,
      logging: BucketLoggingResponse.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      metageneration: map['metageneration'] as String,
      name: map['name'] as String,
      objectRetention: BucketObjectRetentionResponse.fromMap((map['objectRetention'] as Map).cast<String, dynamic>()),
      owner: BucketOwnerResponse.fromMap((map['owner'] as Map).cast<String, dynamic>()),
      projectNumber: map['projectNumber'] as String,
      retentionPolicy: BucketRetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      rpo: map['rpo'] as String,
      satisfiesPZS: map['satisfiesPZS'] as bool,
      selfLink: map['selfLink'] as String,
      softDeletePolicy: BucketSoftDeletePolicyResponse.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>()),
      storageClass: map['storageClass'] as String,
      timeCreated: map['timeCreated'] as String,
      updated: map['updated'] as String,
      versioning: BucketVersioningResponse.fromMap((map['versioning'] as Map).cast<String, dynamic>()),
      website: BucketWebsiteResponse.fromMap((map['website'] as Map).cast<String, dynamic>()),
    );
  }
}

