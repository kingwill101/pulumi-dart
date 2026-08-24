// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_event_notification_rule.dart';

/// Result data returned by getR2BucketEventNotification.
class GetR2BucketEventNotificationResult {
  /// Account ID.
  final String? accountId;
  /// Name of the bucket.
  final String? bucketName;
  /// Queue ID.
  final String? queueId;
  /// Name of the queue.
  final String? queueName;
  final List<GetR2BucketEventNotificationRule>? rules;

  /// Creates a new [GetR2BucketEventNotificationResult].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [queueId] Queue ID.
  /// [queueName] Name of the queue.
  /// [rules] Optional.
  const GetR2BucketEventNotificationResult({
    this.accountId,
    this.bucketName,
    this.queueId,
    this.queueName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetR2BucketEventNotificationRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetR2BucketEventNotificationResult.fromMap(Map<String, dynamic> map) {
    return GetR2BucketEventNotificationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetR2BucketEventNotificationRule>(guardedValue, (value) => GetR2BucketEventNotificationRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
