// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_lock_rule.dart';

/// Result data returned by getR2BucketLock.
class GetR2BucketLockResult {
  /// Account ID.
  final String? accountId;
  /// Name of the bucket.
  final String? bucketName;
  final List<GetR2BucketLockRule>? rules;

  /// Creates a new [GetR2BucketLockResult].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [rules] Optional.
  const GetR2BucketLockResult({
    this.accountId,
    this.bucketName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetR2BucketLockRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetR2BucketLockResult.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLockResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetR2BucketLockRule>(guardedValue, (value) => GetR2BucketLockRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
