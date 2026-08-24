// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lifecycle_rule.dart';

/// {@template pulumi_index_r2_bucket_lifecycle_r2_bucket_lifecycle_args_doc}
/// The set of arguments for R2BucketLifecycle.
/// {@endtemplate}
/// {@macro pulumi_index_r2_bucket_lifecycle_r2_bucket_lifecycle_args_doc}
class R2BucketLifecycleArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  final pulumi.Input<List<R2BucketLifecycleRule>?>? rules;

  /// Creates a new [R2BucketLifecycleArgs].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [rules] Optional.
  const R2BucketLifecycleArgs({
    required this.accountId,
    required this.bucketName,
    this.jurisdiction,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'jurisdiction': ?jurisdiction,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<R2BucketLifecycleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<R2BucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory R2BucketLifecycleArgs.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<R2BucketLifecycleRule>(guardedValue, (value) => R2BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
