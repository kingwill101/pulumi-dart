// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_bucket_config_cmek_settings.dart';
import 'billing_account_bucket_config_index_config.dart';

/// Input properties used for looking up and filtering BillingAccountBucketConfig resources.
class BillingAccountBucketConfigState {
  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String>? billingAccount;
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String>? bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<BillingAccountBucketConfigCmekSettings>? cmekSettings;
  /// Describes this bucket.
  final pulumi.Input<String>? description;
  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<BillingAccountBucketConfigIndexConfig>>? indexConfigs;
  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  final pulumi.Input<String>? lifecycleState;
  /// The location of the bucket.
  final pulumi.Input<String>? location;
  /// The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
  final pulumi.Input<String>? name;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [BillingAccountBucketConfigState].
  /// [billingAccount] The parent resource that contains the logging bucket.
  /// [bucketId] The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [description] Describes this bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data. Structure is documented below.
  /// [lifecycleState] The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  /// [location] The location of the bucket.
  /// [name] The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  BillingAccountBucketConfigState({
    pulumi.Output<String>? billingAccount,
    pulumi.Output<String>? bucketId,
    pulumi.Output<BillingAccountBucketConfigCmekSettings>? cmekSettings,
    pulumi.Output<String>? description,
    pulumi.Output<List<BillingAccountBucketConfigIndexConfig>>? indexConfigs,
    pulumi.Output<String>? lifecycleState,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<int>? retentionDays,
  }) :
      billingAccount = pulumi.Input.asOptionalInput<String>(billingAccount),
      bucketId = pulumi.Input.asOptionalInput<String>(bucketId),
      cmekSettings = pulumi.Input.asOptionalInput<BillingAccountBucketConfigCmekSettings>(cmekSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      indexConfigs = pulumi.Input.asOptionalInput<List<BillingAccountBucketConfigIndexConfig>>(indexConfigs),
      lifecycleState = pulumi.Input.asOptionalInput<String>(lifecycleState),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'bucketId': ?bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<BillingAccountBucketConfigCmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'indexConfigs': ?pulumi.Input.mapOptionalInputValue<List<BillingAccountBucketConfigIndexConfig>, List<Map<String, dynamic>>>(indexConfigs, (value) => pulumi.Input.encodeList<BillingAccountBucketConfigIndexConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleState': ?lifecycleState,
      'location': ?location,
      'name': ?name,
      'retentionDays': ?retentionDays,
    };
  }

  factory BillingAccountBucketConfigState.fromMap(Map<String, dynamic> map) {
    return BillingAccountBucketConfigState(
      billingAccount: map['billingAccount'] == null ? null : pulumi.Output.create<String>(map['billingAccount'] as String),
      bucketId: map['bucketId'] == null ? null : pulumi.Output.create<String>(map['bucketId'] as String),
      cmekSettings: map['cmekSettings'] == null ? null : pulumi.Output.create<BillingAccountBucketConfigCmekSettings>(BillingAccountBucketConfigCmekSettings.fromMap((map['cmekSettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      indexConfigs: map['indexConfigs'] == null ? null : pulumi.Output.create<List<BillingAccountBucketConfigIndexConfig>>(pulumi.Input.decodeList<BillingAccountBucketConfigIndexConfig>(map['indexConfigs'], (value) => BillingAccountBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>()))),
      lifecycleState: map['lifecycleState'] == null ? null : pulumi.Output.create<String>(map['lifecycleState'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
    );
  }
}

