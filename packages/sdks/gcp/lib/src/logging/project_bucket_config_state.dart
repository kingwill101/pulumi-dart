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
    this.bucketId,
    this.cmekSettings,
    this.description,
    this.enableAnalytics,
    this.indexConfigs,
    this.lifecycleState,
    this.location,
    this.locked,
    this.name,
    this.project,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'cmekSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectBucketConfigCmekSettings,
            Map<String, dynamic>
          >(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'enableAnalytics': ?enableAnalytics,
      'indexConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProjectBucketConfigIndexConfig>,
            List<Map<String, dynamic>>
          >(
            indexConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ProjectBucketConfigIndexConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      bucketId: (() {
        final guardedValue = map['bucketId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cmekSettings: (() {
        final guardedValue = map['cmekSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectBucketConfigCmekSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableAnalytics: (() {
        final guardedValue = map['enableAnalytics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      indexConfigs: (() {
        final guardedValue = map['indexConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ProjectBucketConfigIndexConfig>(
            guardedValue,
            (value) => ProjectBucketConfigIndexConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lifecycleState: (() {
        final guardedValue = map['lifecycleState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      locked: (() {
        final guardedValue = map['locked'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionDays: (() {
        final guardedValue = map['retentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
