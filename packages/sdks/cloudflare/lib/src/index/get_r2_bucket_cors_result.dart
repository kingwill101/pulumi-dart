// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_cors_rule.dart';

/// Result data returned by getR2BucketCors.
class GetR2BucketCorsResult {
  /// Account ID.
  final String? accountId;
  /// Name of the bucket.
  final String? bucketName;
  final List<GetR2BucketCorsRule>? rules;

  /// Creates a new [GetR2BucketCorsResult].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [rules] Optional.
  const GetR2BucketCorsResult({
    this.accountId,
    this.bucketName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetR2BucketCorsRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetR2BucketCorsResult.fromMap(Map<String, dynamic> map) {
    return GetR2BucketCorsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetR2BucketCorsRule>(guardedValue, (value) => GetR2BucketCorsRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
