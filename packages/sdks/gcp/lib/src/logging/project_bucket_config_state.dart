// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_bucket_config_cmek_settings.dart';
import 'project_bucket_config_index_config.dart';

/// Input properties used for looking up and filtering ProjectBucketConfig resources.
class ProjectBucketConfigState {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String>? bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. Structure is documented below.
  final pulumi.Input<ProjectBucketConfigCmekSettings>? cmekSettings;
  /// Describes this bucket.
  final pulumi.Input<String>? description;
  /// Whether or not Log Analytics is enabled. Logs for buckets with Log Analytics enabled can be queried in the **Log Analytics** page using SQL queries. Cannot be disabled once enabled.
  final pulumi.Input<bool>? enableAnalytics;
  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<ProjectBucketConfigIndexConfig>>? indexConfigs;
  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  final pulumi.Input<String>? lifecycleState;
  /// The location of the bucket.
  final pulumi.Input<String>? location;
  /// Whether the bucket is locked. The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  final pulumi.Input<bool>? locked;
  /// The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
  final pulumi.Input<String>? name;
  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String>? project;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [ProjectBucketConfigState].
  /// [bucketId] The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. Structure is documented below.
  /// [description] Describes this bucket.
  /// [enableAnalytics] Whether or not Log Analytics is enabled. Logs for buckets with Log Analytics enabled can be queried in the **Log Analytics** page using SQL queries. Cannot be disabled once enabled.
  /// [indexConfigs] A list of indexed fields and related configuration data. Structure is documented below.
  /// [lifecycleState] The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  /// [location] The location of the bucket.
  /// [locked] Whether the bucket is locked. The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  /// [name] The resource name of the bucket. For example: "projects/my-project-id/locations/my-location/buckets/my-bucket-id"
  /// [project] The parent resource that contains the logging bucket.
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  ProjectBucketConfigState({
    pulumi.Output<String>? bucketId,
    pulumi.Output<ProjectBucketConfigCmekSettings>? cmekSettings,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableAnalytics,
    pulumi.Output<List<ProjectBucketConfigIndexConfig>>? indexConfigs,
    pulumi.Output<String>? lifecycleState,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? locked,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<int>? retentionDays,
  }) :
      bucketId = pulumi.Input.asOptionalInput<String>(bucketId),
      cmekSettings = pulumi.Input.asOptionalInput<ProjectBucketConfigCmekSettings>(cmekSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableAnalytics = pulumi.Input.asOptionalInput<bool>(enableAnalytics),
      indexConfigs = pulumi.Input.asOptionalInput<List<ProjectBucketConfigIndexConfig>>(indexConfigs),
      lifecycleState = pulumi.Input.asOptionalInput<String>(lifecycleState),
      location = pulumi.Input.asOptionalInput<String>(location),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<ProjectBucketConfigCmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'enableAnalytics': ?enableAnalytics,
      'indexConfigs': ?pulumi.Input.mapOptionalInputValue<List<ProjectBucketConfigIndexConfig>, List<Map<String, dynamic>>>(indexConfigs, (value) => pulumi.Input.encodeList<ProjectBucketConfigIndexConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleState': ?lifecycleState,
      'location': ?location,
      'locked': ?locked,
      'name': ?name,
      'project': ?project,
      'retentionDays': ?retentionDays,
    };
  }

  factory ProjectBucketConfigState.fromMap(Map<String, dynamic> map) {
    return ProjectBucketConfigState(
      bucketId: map['bucketId'] == null ? null : pulumi.Output.create<String>(map['bucketId'] as String),
      cmekSettings: map['cmekSettings'] == null ? null : pulumi.Output.create<ProjectBucketConfigCmekSettings>(ProjectBucketConfigCmekSettings.fromMap((map['cmekSettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableAnalytics: map['enableAnalytics'] == null ? null : pulumi.Output.create<bool>(map['enableAnalytics'] as bool),
      indexConfigs: map['indexConfigs'] == null ? null : pulumi.Output.create<List<ProjectBucketConfigIndexConfig>>(pulumi.Input.decodeList<ProjectBucketConfigIndexConfig>(map['indexConfigs'], (value) => ProjectBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>()))),
      lifecycleState: map['lifecycleState'] == null ? null : pulumi.Output.create<String>(map['lifecycleState'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
    );
  }
}

