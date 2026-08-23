// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_autoclass.dart';
import 'bucket_cor.dart';
import 'bucket_custom_placement_config.dart';
import 'bucket_encryption.dart';
import 'bucket_hierarchical_namespace.dart';
import 'bucket_ip_filter.dart';
import 'bucket_lifecycle_rule.dart';
import 'bucket_logging.dart';
import 'bucket_retention_policy.dart';
import 'bucket_soft_delete_policy.dart';
import 'bucket_versioning.dart';
import 'bucket_website.dart';

/// Input properties used for looking up and filtering Bucket resources.
class BucketState {
  /// The bucket's [Autoclass](https://cloud.google.com/storage/docs/autoclass) configuration.  Structure is documented below.
  final pulumi.Input<BucketAutoclass>? autoclass;
  /// The bucket's [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  final pulumi.Input<List<BucketCor>>? cors;
  /// The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. Structure is documented below.
  final pulumi.Input<BucketCustomPlacementConfig>? customPlacementConfig;
  /// Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.
  final pulumi.Input<bool>? defaultEventBasedHold;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Enables [object retention](https://cloud.google.com/storage/docs/object-lock) on a storage bucket.
  final pulumi.Input<bool>? enableObjectRetention;
  /// The bucket's encryption configuration. Structure is documented below.
  final pulumi.Input<BucketEncryption>? encryption;
  /// When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be assumed not present when the provider is not permissioned, attempting to delete the bucket anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).
  final pulumi.Input<bool>? forceDestroy;
  /// The bucket's hierarchical namespace policy, which defines the bucket capability to handle folders in logical structure. Structure is documented below. To use this configuration, `uniformBucketLevelAccess` must be enabled on bucket.
  final pulumi.Input<BucketHierarchicalNamespace>? hierarchicalNamespace;
  /// The bucket IP filtering configuration. Specifies the network sources that can access the bucket, as well as its underlying objects. Structure is documented below.
  final pulumi.Input<BucketIpFilter>? ipFilter;
  /// A map of key/value label pairs to assign to the bucket.
  final pulumi.Input<Map<String, String>>? labels;
  /// The bucket's [Lifecycle Rules](https://cloud.google.com/storage/docs/lifecycle#configuration) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  final pulumi.Input<List<BucketLifecycleRule>>? lifecycleRules;
  /// The [GCS location](https://cloud.google.com/storage/docs/bucket-locations).
  ///
  /// - - -
  final pulumi.Input<String>? location;
  /// The bucket's [Access & Storage Logs](https://cloud.google.com/storage/docs/access-logs) configuration. Structure is documented below.
  final pulumi.Input<BucketLogging>? logging;
  /// The name of the bucket. Bucket names must be in lowercase and no more than 63 characters long. You can find the complete list of bucket naming rules [here](https://cloud.google.com/storage/docs/buckets#naming).
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The project number of the project in which the resource belongs.
  final pulumi.Input<int>? projectNumber;
  /// Prevents public access to a bucket. Acceptable values are "inherited" or "enforced". If "inherited", the bucket uses [public access prevention](https://cloud.google.com/storage/docs/public-access-prevention) only if the bucket is subject to the public access prevention organization policy constraint. Defaults to "inherited".
  final pulumi.Input<String>? publicAccessPrevention;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Enables [Requester Pays](https://cloud.google.com/storage/docs/requester-pays) on a storage bucket.
  final pulumi.Input<bool>? requesterPays;
  /// Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. Structure is documented below.
  final pulumi.Input<BucketRetentionPolicy>? retentionPolicy;
  /// The recovery point objective for cross-region replication of the bucket. Applicable only for dual and multi-region buckets. `"DEFAULT"` sets default replication. `"ASYNC_TURBO"` value enables turbo replication, valid for dual-region buckets only. See [Turbo Replication](https://cloud.google.com/storage/docs/managing-turbo-replication) for more information. If rpo is not specified at bucket creation, it defaults to `"DEFAULT"` for dual and multi-region buckets. **NOTE** If used with single-region bucket, It will throw an error.
  final pulumi.Input<String>? rpo;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If the block is not provided, Server side value will be kept which means removal of block won't generate any terraform change. Structure is documented below.
  final pulumi.Input<BucketSoftDeletePolicy>? softDeletePolicy;
  /// The [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of the new bucket. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  final pulumi.Input<String>? storageClass;
  /// The creation time of the bucket in RFC 3339 format.
  final pulumi.Input<String>? timeCreated;
  /// Enables [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) access to a bucket.
  final pulumi.Input<bool>? uniformBucketLevelAccess;
  /// The time at which the bucket's metadata or IAM policy was last updated, in RFC 3339 format.
  final pulumi.Input<String>? updated;
  /// The base URL of the bucket, in the format `gs://&lt;bucket-name&gt;`.
  final pulumi.Input<String>? url;
  /// The bucket's [Versioning](https://cloud.google.com/storage/docs/object-versioning) configuration.  Structure is documented below.
  final pulumi.Input<BucketVersioning>? versioning;
  /// Configuration if the bucket acts as a website. Structure is documented below.
  final pulumi.Input<BucketWebsite>? website;

  /// Creates a new [BucketState].
  /// [autoclass] The bucket's [Autoclass](https://cloud.google.com/storage/docs/autoclass) configuration.  Structure is documented below.
  /// [cors] The bucket's [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  /// [customPlacementConfig] The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. Structure is documented below.
  /// [defaultEventBasedHold] Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  /// [enableObjectRetention] Enables [object retention](https://cloud.google.com/storage/docs/object-lock) on a storage bucket.
  /// [encryption] The bucket's encryption configuration. Structure is documented below.
  /// [forceDestroy] When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be assumed not present when the provider is not permissioned, attempting to delete the bucket anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).
  /// [hierarchicalNamespace] The bucket's hierarchical namespace policy, which defines the bucket capability to handle folders in logical structure. Structure is documented below. To use this configuration, `uniformBucketLevelAccess` must be enabled on bucket.
  /// [ipFilter] The bucket IP filtering configuration. Specifies the network sources that can access the bucket, as well as its underlying objects. Structure is documented below.
  /// [labels] A map of key/value label pairs to assign to the bucket.
  /// [lifecycleRules] The bucket's [Lifecycle Rules](https://cloud.google.com/storage/docs/lifecycle#configuration) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  /// [location] The [GCS location](https://cloud.google.com/storage/docs/bucket-locations).
  /// [logging] The bucket's [Access & Storage Logs](https://cloud.google.com/storage/docs/access-logs) configuration. Structure is documented below.
  /// [name] The name of the bucket. Bucket names must be in lowercase and no more than 63 characters long. You can find the complete list of bucket naming rules [here](https://cloud.google.com/storage/docs/buckets#naming).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [projectNumber] The project number of the project in which the resource belongs.
  /// [publicAccessPrevention] Prevents public access to a bucket. Acceptable values are "inherited" or "enforced". If "inherited", the bucket uses [public access prevention](https://cloud.google.com/storage/docs/public-access-prevention) only if the bucket is subject to the public access prevention organization policy constraint. Defaults to "inherited".
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [requesterPays] Enables [Requester Pays](https://cloud.google.com/storage/docs/requester-pays) on a storage bucket.
  /// [retentionPolicy] Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. Structure is documented below.
  /// [rpo] The recovery point objective for cross-region replication of the bucket. Applicable only for dual and multi-region buckets. `"DEFAULT"` sets default replication. `"ASYNC_TURBO"` value enables turbo replication, valid for dual-region buckets only. See [Turbo Replication](https://cloud.google.com/storage/docs/managing-turbo-replication) for more information. If rpo is not specified at bucket creation, it defaults to `"DEFAULT"` for dual and multi-region buckets. **NOTE** If used with single-region bucket, It will throw an error.
  /// [selfLink] The URI of the created resource.
  /// [softDeletePolicy] The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If the block is not provided, Server side value will be kept which means removal of block won't generate any terraform change. Structure is documented below.
  /// [storageClass] The [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of the new bucket. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  /// [timeCreated] The creation time of the bucket in RFC 3339 format.
  /// [uniformBucketLevelAccess] Enables [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) access to a bucket.
  /// [updated] The time at which the bucket's metadata or IAM policy was last updated, in RFC 3339 format.
  /// [url] The base URL of the bucket, in the format `gs://&lt;bucket-name&gt;`.
  /// [versioning] The bucket's [Versioning](https://cloud.google.com/storage/docs/object-versioning) configuration.  Structure is documented below.
  /// [website] Configuration if the bucket acts as a website. Structure is documented below.
  const BucketState({
    this.autoclass,
    this.cors,
    this.customPlacementConfig,
    this.defaultEventBasedHold,
    this.deletionPolicy,
    this.effectiveLabels,
    this.enableObjectRetention,
    this.encryption,
    this.forceDestroy,
    this.hierarchicalNamespace,
    this.ipFilter,
    this.labels,
    this.lifecycleRules,
    this.location,
    this.logging,
    this.name,
    this.project,
    this.projectNumber,
    this.publicAccessPrevention,
    this.pulumiLabels,
    this.requesterPays,
    this.retentionPolicy,
    this.rpo,
    this.selfLink,
    this.softDeletePolicy,
    this.storageClass,
    this.timeCreated,
    this.uniformBucketLevelAccess,
    this.updated,
    this.url,
    this.versioning,
    this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoclass': ?pulumi.Input.mapOptionalInputValue<BucketAutoclass, Map<String, dynamic>>(autoclass, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<List<BucketCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<BucketCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customPlacementConfig': ?pulumi.Input.mapOptionalInputValue<BucketCustomPlacementConfig, Map<String, dynamic>>(customPlacementConfig, (value) => value.toMap()),
      'defaultEventBasedHold': ?defaultEventBasedHold,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'enableObjectRetention': ?enableObjectRetention,
      'encryption': ?pulumi.Input.mapOptionalInputValue<BucketEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'hierarchicalNamespace': ?pulumi.Input.mapOptionalInputValue<BucketHierarchicalNamespace, Map<String, dynamic>>(hierarchicalNamespace, (value) => value.toMap()),
      'ipFilter': ?pulumi.Input.mapOptionalInputValue<BucketIpFilter, Map<String, dynamic>>(ipFilter, (value) => value.toMap()),
      'labels': ?labels,
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<BucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'logging': ?pulumi.Input.mapOptionalInputValue<BucketLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'projectNumber': ?projectNumber,
      'publicAccessPrevention': ?publicAccessPrevention,
      'pulumiLabels': ?pulumiLabels,
      'requesterPays': ?requesterPays,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<BucketRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'rpo': ?rpo,
      'selfLink': ?selfLink,
      'softDeletePolicy': ?pulumi.Input.mapOptionalInputValue<BucketSoftDeletePolicy, Map<String, dynamic>>(softDeletePolicy, (value) => value.toMap()),
      'storageClass': ?storageClass,
      'timeCreated': ?timeCreated,
      'uniformBucketLevelAccess': ?uniformBucketLevelAccess,
      'updated': ?updated,
      'url': ?url,
      'versioning': ?pulumi.Input.mapOptionalInputValue<BucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
      'website': ?pulumi.Input.mapOptionalInputValue<BucketWebsite, Map<String, dynamic>>(website, (value) => value.toMap()),
    };
  }

  factory BucketState.fromMap(Map<String, dynamic> map) {
    return BucketState(
      autoclass: (() { final guardedValue = map['autoclass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketAutoclass.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketCor>(guardedValue, (value) => BucketCor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customPlacementConfig: (() { final guardedValue = map['customPlacementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketCustomPlacementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultEventBasedHold: (() { final guardedValue = map['defaultEventBasedHold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableObjectRetention: (() { final guardedValue = map['enableObjectRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hierarchicalNamespace: (() { final guardedValue = map['hierarchicalNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketHierarchicalNamespace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipFilter: (() { final guardedValue = map['ipFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketIpFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lifecycleRules: (() { final guardedValue = map['lifecycleRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRule>(guardedValue, (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectNumber: (() { final guardedValue = map['projectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      publicAccessPrevention: (() { final guardedValue = map['publicAccessPrevention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requesterPays: (() { final guardedValue = map['requesterPays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rpo: (() { final guardedValue = map['rpo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softDeletePolicy: (() { final guardedValue = map['softDeletePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketSoftDeletePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniformBucketLevelAccess: (() { final guardedValue = map['uniformBucketLevelAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versioning: (() { final guardedValue = map['versioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketVersioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      website: (() { final guardedValue = map['website']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
