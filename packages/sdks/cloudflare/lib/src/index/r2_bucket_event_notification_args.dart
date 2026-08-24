// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_event_notification_rule.dart';

/// {@template pulumi_index_r2_bucket_event_notification_r2_bucket_event_notification_args_doc}
/// The set of arguments for R2BucketEventNotification.
/// {@endtemplate}
/// {@macro pulumi_index_r2_bucket_event_notification_r2_bucket_event_notification_args_doc}
class R2BucketEventNotificationArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  /// Queue ID.
  final pulumi.Input<String> queueId;
  /// Array of rules to drive notifications.
  final pulumi.Input<List<R2BucketEventNotificationRule>> rules;

  /// Creates a new [R2BucketEventNotificationArgs].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [queueId] Queue ID.
  /// [rules] Array of rules to drive notifications.
  const R2BucketEventNotificationArgs({
    required this.accountId,
    required this.bucketName,
    this.jurisdiction,
    required this.queueId,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'jurisdiction': ?jurisdiction,
      'queueId': queueId,
      'rules': pulumi.Input.mapInputValue<List<R2BucketEventNotificationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<R2BucketEventNotificationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory R2BucketEventNotificationArgs.fromMap(Map<String, dynamic> map) {
    return R2BucketEventNotificationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<R2BucketEventNotificationRule>(map['rules']!, (value) => R2BucketEventNotificationRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
