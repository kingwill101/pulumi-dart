// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lock_rule.dart';

/// Input properties used for looking up and filtering R2BucketLock resources.
class R2BucketLockState {
  /// Account ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the bucket.
  final pulumi.Input<String?>? bucketName;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  final pulumi.Input<List<R2BucketLockRule>?>? rules;

  /// Creates a new [R2BucketLockState].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [rules] Optional.
  const R2BucketLockState({
    this.accountId,
    this.bucketName,
    this.jurisdiction,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'jurisdiction': ?jurisdiction,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<R2BucketLockRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<R2BucketLockRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory R2BucketLockState.fromMap(Map<String, dynamic> map) {
    return R2BucketLockState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<R2BucketLockRule>(guardedValue, (value) => R2BucketLockRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
