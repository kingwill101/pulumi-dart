// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_event_notification_rule.dart';

/// Input properties used for looking up and filtering R2BucketEventNotification resources.
class R2BucketEventNotificationState {
  /// Account ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the bucket.
  final pulumi.Input<String?>? bucketName;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  /// Queue ID.
  final pulumi.Input<String?>? queueId;
  /// Name of the queue.
  final pulumi.Input<String?>? queueName;
  /// Array of rules to drive notifications.
  final pulumi.Input<List<R2BucketEventNotificationRule>?>? rules;

  /// Creates a new [R2BucketEventNotificationState].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [queueId] Queue ID.
  /// [queueName] Name of the queue.
  /// [rules] Array of rules to drive notifications.
  const R2BucketEventNotificationState({
    this.accountId,
    this.bucketName,
    this.jurisdiction,
    this.queueId,
    this.queueName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'jurisdiction': ?jurisdiction,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<R2BucketEventNotificationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<R2BucketEventNotificationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory R2BucketEventNotificationState.fromMap(Map<String, dynamic> map) {
    return R2BucketEventNotificationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<R2BucketEventNotificationRule>(guardedValue, (value) => R2BucketEventNotificationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
