// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_lifecycle_rule.dart';

/// Result data returned by getR2BucketLifecycle.
class GetR2BucketLifecycleResult {
  /// Account ID.
  final String? accountId;
  /// Name of the bucket.
  final String? bucketName;
  final List<GetR2BucketLifecycleRule>? rules;

  /// Creates a new [GetR2BucketLifecycleResult].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [rules] Optional.
  const GetR2BucketLifecycleResult({
    this.accountId,
    this.bucketName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetR2BucketLifecycleRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetR2BucketLifecycleResult.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLifecycleResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetR2BucketLifecycleRule>(guardedValue, (value) => GetR2BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
