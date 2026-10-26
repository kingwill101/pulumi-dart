// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_settings_response.dart';
import 'index_config_response.dart';

/// Result data returned by getBillingAccountBucket.
class GetBillingAccountBucketResult {
  /// Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  final bool? analyticsEnabled;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final CmekSettingsResponse? cmekSettings;
  /// The creation timestamp of the bucket. This is not set for any of the default buckets.
  final String? createTime;
  /// Describes this bucket.
  final String? description;
  /// A list of indexed fields and related configuration data.
  final List<IndexConfigResponse>? indexConfigs;
  /// The bucket lifecycle state.
  final String? lifecycleState;
  /// Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  final bool? locked;
  /// The resource name of the bucket.For example:projects/my-project/locations/global/buckets/my-bucketFor a list of supported locations, see Supported Regions (https://cloud.google.com/logging/docs/region-support)For the location of global it is unspecified where log entries are actually stored.After a bucket has been created, the location cannot be changed.
  final String? name;
  /// Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  final List<String>? restrictedFields;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  final int? retentionDays;
  /// The last update timestamp of the bucket.
  final String? updateTime;

  /// Creates a new [GetBillingAccountBucketResult].
  /// [analyticsEnabled] Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [createTime] The creation timestamp of the bucket. This is not set for any of the default buckets.
  /// [description] Describes this bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data.
  /// [lifecycleState] The bucket lifecycle state.
  /// [locked] Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  /// [name] The resource name of the bucket.For example:projects/my-project/locations/global/buckets/my-bucketFor a list of supported locations, see Supported Regions (https://cloud.google.com/logging/docs/region-support)For the location of global it is unspecified where log entries are actually stored.After a bucket has been created, the location cannot be changed.
  /// [restrictedFields] Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  /// [updateTime] The last update timestamp of the bucket.
  const GetBillingAccountBucketResult({
    this.analyticsEnabled,
    this.cmekSettings,
    this.createTime,
    this.description,
    this.indexConfigs,
    this.lifecycleState,
    this.locked,
    this.name,
    this.restrictedFields,
    this.retentionDays,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsEnabled': ?analyticsEnabled,
      'cmekSettings': ?cmekSettings?.toMap(),
      'createTime': ?createTime,
      'description': ?description,
      'indexConfigs': ?(() { final guardedValue = indexConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<IndexConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lifecycleState': ?lifecycleState,
      'locked': ?locked,
      'name': ?name,
      'restrictedFields': ?restrictedFields,
      'retentionDays': ?retentionDays,
      'updateTime': ?updateTime,
    };
  }

  factory GetBillingAccountBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketResult(
      analyticsEnabled: (() { final guardedValue = map['analyticsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      cmekSettings: (() { final guardedValue = map['cmekSettings']; if (guardedValue == null) return null; return CmekSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexConfigs: (() { final guardedValue = map['indexConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IndexConfigResponse>(guardedValue, (value) => IndexConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restrictedFields: (() { final guardedValue = map['restrictedFields']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
