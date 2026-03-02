// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_settings.dart';
import 'index_config.dart';

/// {@template pulumi_logging_v2_bucket_args_doc}
/// The set of arguments for Bucket.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_bucket_args_doc}
class BucketArgs {
  /// Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  final pulumi.Input<bool>? analyticsEnabled;
  /// Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final pulumi.Input<String> bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<CmekSettings>? cmekSettings;
  /// Describes this bucket.
  final pulumi.Input<String>? description;
  /// A list of indexed fields and related configuration data.
  final pulumi.Input<List<IndexConfig>>? indexConfigs;
  final pulumi.Input<String>? location;
  /// Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  final pulumi.Input<bool>? locked;
  final pulumi.Input<String>? project;
  /// Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  final pulumi.Input<List<String>>? restrictedFields;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [BucketArgs].
  /// [analyticsEnabled] Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  /// [bucketId] Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [description] Describes this bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data.
  /// [location] Optional.
  /// [locked] Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  /// [project] Optional.
  /// [restrictedFields] Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  BucketArgs({
    this.analyticsEnabled,
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.indexConfigs,
    this.location,
    this.locked,
    this.project,
    this.restrictedFields,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsEnabled': ?analyticsEnabled,
      'bucketId': bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<CmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'indexConfigs': ?pulumi.Input.mapOptionalInputValue<List<IndexConfig>, List<Map<String, dynamic>>>(indexConfigs, (value) => pulumi.Input.encodeList<IndexConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'locked': ?locked,
      'project': ?project,
      'restrictedFields': ?restrictedFields,
      'retentionDays': ?retentionDays,
    };
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      analyticsEnabled: map['analyticsEnabled'] == null ? null : (map['analyticsEnabled'] as bool).input(),
      bucketId: (map['bucketId'] as String).input(),
      cmekSettings: map['cmekSettings'] == null ? null : (CmekSettings.fromMap((map['cmekSettings'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      indexConfigs: map['indexConfigs'] == null ? null : (pulumi.Input.decodeList<IndexConfig>(map['indexConfigs'], (value) => IndexConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      locked: map['locked'] == null ? null : (map['locked'] as bool).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      restrictedFields: map['restrictedFields'] == null ? null : ((map['restrictedFields'] as List).cast<String>()).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays'] as int).input(),
    );
  }
}

