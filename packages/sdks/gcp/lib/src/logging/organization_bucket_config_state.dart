// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_bucket_config_cmek_settings.dart';
import 'organization_bucket_config_index_config.dart';

/// Input properties used for looking up and filtering OrganizationBucketConfig resources.
class OrganizationBucketConfigState {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String>? bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<OrganizationBucketConfigCmekSettings>? cmekSettings;
  /// Describes this bucket.
  final pulumi.Input<String>? description;
  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<OrganizationBucketConfigIndexConfig>>? indexConfigs;
  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  final pulumi.Input<String>? lifecycleState;
  /// The location of the bucket. The supported locations are: "global" "us-central1"
  final pulumi.Input<String>? location;
  /// The resource name of the bucket. For example: "organizations/my-organization-id/locations/my-location/buckets/my-bucket-id"
  final pulumi.Input<String>? name;
  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String>? organization;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [OrganizationBucketConfigState].
  /// [bucketId] The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [description] Describes this bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data. Structure is documented below.
  /// [lifecycleState] The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  /// [location] The location of the bucket. The supported locations are: "global" "us-central1"
  /// [name] The resource name of the bucket. For example: "organizations/my-organization-id/locations/my-location/buckets/my-bucket-id"
  /// [organization] The parent resource that contains the logging bucket.
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  OrganizationBucketConfigState({
    pulumi.Output<String>? bucketId,
    pulumi.Output<OrganizationBucketConfigCmekSettings>? cmekSettings,
    pulumi.Output<String>? description,
    pulumi.Output<List<OrganizationBucketConfigIndexConfig>>? indexConfigs,
    pulumi.Output<String>? lifecycleState,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<int>? retentionDays,
  }) :
      bucketId = pulumi.Input.asOptionalInput<String>(bucketId),
      cmekSettings = pulumi.Input.asOptionalInput<OrganizationBucketConfigCmekSettings>(cmekSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      indexConfigs = pulumi.Input.asOptionalInput<List<OrganizationBucketConfigIndexConfig>>(indexConfigs),
      lifecycleState = pulumi.Input.asOptionalInput<String>(lifecycleState),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<OrganizationBucketConfigCmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'indexConfigs': ?pulumi.Input.mapOptionalInputValue<List<OrganizationBucketConfigIndexConfig>, List<Map<String, dynamic>>>(indexConfigs, (value) => pulumi.Input.encodeList<OrganizationBucketConfigIndexConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleState': ?lifecycleState,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'retentionDays': ?retentionDays,
    };
  }

  factory OrganizationBucketConfigState.fromMap(Map<String, dynamic> map) {
    return OrganizationBucketConfigState(
      bucketId: map['bucketId'] == null ? null : pulumi.Output.create<String>(map['bucketId'] as String),
      cmekSettings: map['cmekSettings'] == null ? null : pulumi.Output.create<OrganizationBucketConfigCmekSettings>(OrganizationBucketConfigCmekSettings.fromMap((map['cmekSettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      indexConfigs: map['indexConfigs'] == null ? null : pulumi.Output.create<List<OrganizationBucketConfigIndexConfig>>(pulumi.Input.decodeList<OrganizationBucketConfigIndexConfig>(map['indexConfigs'], (value) => OrganizationBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>()))),
      lifecycleState: map['lifecycleState'] == null ? null : pulumi.Output.create<String>(map['lifecycleState'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
    );
  }
}

