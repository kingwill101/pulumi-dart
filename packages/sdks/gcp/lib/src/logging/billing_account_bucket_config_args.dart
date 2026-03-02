// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_bucket_config_cmek_settings.dart';
import 'billing_account_bucket_config_index_config.dart';

/// {@template pulumi_logging_billing_account_bucket_config_billing_account_bucket_config_args_doc}
/// The set of arguments for BillingAccountBucketConfig.
/// {@endtemplate}
/// {@macro pulumi_logging_billing_account_bucket_config_billing_account_bucket_config_args_doc}
class BillingAccountBucketConfigArgs {
  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String> billingAccount;
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String> bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<BillingAccountBucketConfigCmekSettings>? cmekSettings;
  /// Describes this bucket.
  final pulumi.Input<String>? description;
  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<BillingAccountBucketConfigIndexConfig>>? indexConfigs;
  /// The location of the bucket.
  final pulumi.Input<String> location;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [BillingAccountBucketConfigArgs].
  /// [billingAccount] The parent resource that contains the logging bucket.
  /// [bucketId] The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [description] Describes this bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data. Structure is documented below.
  /// [location] The location of the bucket.
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  BillingAccountBucketConfigArgs({
    required this.billingAccount,
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.indexConfigs,
    required this.location,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': billingAccount,
      'bucketId': bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<BillingAccountBucketConfigCmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'indexConfigs': ?pulumi.Input.mapOptionalInputValue<List<BillingAccountBucketConfigIndexConfig>, List<Map<String, dynamic>>>(indexConfigs, (value) => pulumi.Input.encodeList<BillingAccountBucketConfigIndexConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'retentionDays': ?retentionDays,
    };
  }

  factory BillingAccountBucketConfigArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountBucketConfigArgs(
      billingAccount: (map['billingAccount'] as String).input(),
      bucketId: (map['bucketId'] as String).input(),
      cmekSettings: map['cmekSettings'] == null ? null : (BillingAccountBucketConfigCmekSettings.fromMap((map['cmekSettings']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      indexConfigs: map['indexConfigs'] == null ? null : (pulumi.Input.decodeList<BillingAccountBucketConfigIndexConfig>(map['indexConfigs']!, (value) => BillingAccountBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: (map['location'] as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
    );
  }
}

