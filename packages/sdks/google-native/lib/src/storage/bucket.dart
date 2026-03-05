import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_args.dart';
import 'bucket_autoclass_response.dart';
import 'bucket_billing_response.dart';
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

/// Creates a new bucket.
class Bucket extends pulumi.CustomResource {
  /// Access controls on the bucket.
  late final pulumi.Output<List<Map<String, dynamic>>> acl;
  /// The bucket's Autoclass configuration.
  late final pulumi.Output<BucketAutoclassResponse> autoclass;
  /// The bucket's billing configuration.
  late final pulumi.Output<BucketBillingResponse> billing;
  /// The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  late final pulumi.Output<List<Map<String, dynamic>>> cors;
  /// The bucket's custom placement configuration for Custom Dual Regions.
  late final pulumi.Output<BucketCustomPlacementConfigResponse> customPlacementConfig;
  /// The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
  late final pulumi.Output<bool> defaultEventBasedHold;
  /// Default access controls to apply to new objects when no ACL is provided.
  late final pulumi.Output<List<Map<String, dynamic>>> defaultObjectAcl;
  /// When set to true, object retention is enabled for this bucket.
  late final pulumi.Output<bool?> enableObjectRetention;
  /// Encryption configuration for a bucket.
  late final pulumi.Output<BucketEncryptionResponse> encryption;
  /// HTTP 1.1 Entity tag for the bucket.
  late final pulumi.Output<String> etag;
  /// The bucket's IAM configuration.
  late final pulumi.Output<BucketIamConfigurationResponse> iamConfiguration;
  /// The kind of item this is. For buckets, this is always storage#bucket.
  late final pulumi.Output<String> kind;
  /// User-provided labels, in key/value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  /// The bucket's lifecycle configuration. See lifecycle management for more information.
  late final pulumi.Output<BucketLifecycleResponse> lifecycle;
  /// The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
  late final pulumi.Output<String> location;
  /// The type of the bucket location.
  late final pulumi.Output<String> locationType;
  /// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  late final pulumi.Output<BucketLoggingResponse> logging;
  /// The metadata generation of this bucket.
  late final pulumi.Output<String> metageneration;
  /// The name of the bucket.
  late final pulumi.Output<String> name;
  /// The bucket's object retention config.
  late final pulumi.Output<BucketObjectRetentionResponse> objectRetention;
  /// The owner of the bucket. This is always the project team's owner group.
  late final pulumi.Output<BucketOwnerResponse> owner;
  /// Apply a predefined set of access controls to this bucket.
  late final pulumi.Output<String?> predefinedAcl;
  /// Apply a predefined set of default object access controls to this bucket.
  late final pulumi.Output<String?> predefinedDefaultObjectAcl;
  /// A valid API project identifier.
  late final pulumi.Output<String> project;
  /// The project number of the project the bucket belongs to.
  late final pulumi.Output<String> projectNumber;
  /// Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
  late final pulumi.Output<String?> projection;
  /// The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.
  late final pulumi.Output<BucketRetentionPolicyResponse> retentionPolicy;
  /// The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
  late final pulumi.Output<String> rpo;
  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPZS;
  /// The URI of this bucket.
  late final pulumi.Output<String> selfLink;
  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
  late final pulumi.Output<BucketSoftDeletePolicyResponse> softDeletePolicy;
  /// The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
  late final pulumi.Output<String> storageClass;
  /// The creation time of the bucket in RFC 3339 format.
  late final pulumi.Output<String> timeCreated;
  /// The modification time of the bucket in RFC 3339 format.
  late final pulumi.Output<String> updated;
  /// The project to be billed for this request.
  late final pulumi.Output<String?> userProject;
  /// The bucket's versioning configuration.
  late final pulumi.Output<BucketVersioningResponse> versioning;
  /// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
  late final pulumi.Output<BucketWebsiteResponse> website;

  /// Creates a new [Bucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bucket]. {@macro pulumi_storage_v1_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bucket(
    String name, {
    BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<List<Map<String, dynamic>>>('acl');
    autoclass = registerOutput<BucketAutoclassResponse>('autoclass', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAutoclassResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    billing = registerOutput<BucketBillingResponse>('billing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketBillingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<List<Map<String, dynamic>>>('cors');
    customPlacementConfig = registerOutput<BucketCustomPlacementConfigResponse>('customPlacementConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketCustomPlacementConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultEventBasedHold = registerOutput<bool>('defaultEventBasedHold');
    defaultObjectAcl = registerOutput<List<Map<String, dynamic>>>('defaultObjectAcl');
    enableObjectRetention = registerOutput<bool?>('enableObjectRetention');
    encryption = registerOutput<BucketEncryptionResponse>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    iamConfiguration = registerOutput<BucketIamConfigurationResponse>('iamConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketIamConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    labels = registerOutput<Map<String, String>>('labels');
    lifecycle = registerOutput<BucketLifecycleResponse>('lifecycle', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLifecycleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    locationType = registerOutput<String>('locationType');
    logging = registerOutput<BucketLoggingResponse>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLoggingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metageneration = registerOutput<String>('metageneration');
    this.name = registerOutput<String>('name');
    objectRetention = registerOutput<BucketObjectRetentionResponse>('objectRetention', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketObjectRetentionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<BucketOwnerResponse>('owner', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketOwnerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    predefinedAcl = registerOutput<String?>('predefinedAcl');
    predefinedDefaultObjectAcl = registerOutput<String?>('predefinedDefaultObjectAcl');
    project = registerOutput<String>('project');
    projectNumber = registerOutput<String>('projectNumber');
    projection = registerOutput<String?>('projection');
    retentionPolicy = registerOutput<BucketRetentionPolicyResponse>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rpo = registerOutput<String>('rpo');
    satisfiesPZS = registerOutput<bool>('satisfiesPZS');
    selfLink = registerOutput<String>('selfLink');
    softDeletePolicy = registerOutput<BucketSoftDeletePolicyResponse>('softDeletePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketSoftDeletePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageClass = registerOutput<String>('storageClass');
    timeCreated = registerOutput<String>('timeCreated');
    updated = registerOutput<String>('updated');
    userProject = registerOutput<String?>('userProject');
    versioning = registerOutput<BucketVersioningResponse>('versioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketVersioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    website = registerOutput<BucketWebsiteResponse>('website', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
