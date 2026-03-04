// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_bucket_config_cmek_settings.dart';
import 'folder_bucket_config_index_config.dart';

/// Input properties used for looking up and filtering FolderBucketConfig resources.
class FolderBucketConfigState {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String>? bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<FolderBucketConfigCmekSettings>? cmekSettings;

  /// Describes this bucket.
  final pulumi.Input<String>? description;

  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String>? folder;

  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<FolderBucketConfigIndexConfig>>? indexConfigs;

  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  final pulumi.Input<String>? lifecycleState;

  /// The location of the bucket.
  final pulumi.Input<String>? location;

  /// The resource name of the bucket. For example: "folders/my-folder-id/locations/my-location/buckets/my-bucket-id"
  final pulumi.Input<String>? name;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [FolderBucketConfigState].
  /// [bucketId] The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [description] Describes this bucket.
  /// [folder] The parent resource that contains the logging bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data. Structure is documented below.
  /// [lifecycleState] The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  /// [location] The location of the bucket.
  /// [name] The resource name of the bucket. For example: "folders/my-folder-id/locations/my-location/buckets/my-bucket-id"
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  FolderBucketConfigState({
    this.bucketId,
    this.cmekSettings,
    this.description,
    this.folder,
    this.indexConfigs,
    this.lifecycleState,
    this.location,
    this.name,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'cmekSettings':
          ?pulumi.Input.mapOptionalInputValue<
            FolderBucketConfigCmekSettings,
            Map<String, dynamic>
          >(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'folder': ?folder,
      'indexConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FolderBucketConfigIndexConfig>,
            List<Map<String, dynamic>>
          >(
            indexConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  FolderBucketConfigIndexConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lifecycleState': ?lifecycleState,
      'location': ?location,
      'name': ?name,
      'retentionDays': ?retentionDays,
    };
  }

  factory FolderBucketConfigState.fromMap(Map<String, dynamic> map) {
    return FolderBucketConfigState(
      bucketId: (() {
        final guardedValue = map['bucketId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cmekSettings: (() {
        final guardedValue = map['cmekSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FolderBucketConfigCmekSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexConfigs: (() {
        final guardedValue = map['indexConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FolderBucketConfigIndexConfig>(
            guardedValue,
            (value) => FolderBucketConfigIndexConfig.fromMap(
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
      name: (() {
        final guardedValue = map['name'];
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
