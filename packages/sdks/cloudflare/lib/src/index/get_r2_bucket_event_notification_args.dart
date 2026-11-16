// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_r2_bucket_event_notification_get_r2_bucket_event_notification_args_doc}
/// Arguments for getR2BucketEventNotification.
/// {@endtemplate}
/// {@macro pulumi_index_get_r2_bucket_event_notification_get_r2_bucket_event_notification_args_doc}
class GetR2BucketEventNotificationArgs {
  /// Cloudflare account ID that owns the R2 resource.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// ID of the Cloudflare Queue that receives notifications for matching R2 object events.
  final pulumi.Input<String> queueId;

  /// Creates a new [GetR2BucketEventNotificationArgs].
  /// [accountId] Cloudflare account ID that owns the R2 resource.
  /// [bucketName] Name of the bucket.
  /// [queueId] ID of the Cloudflare Queue that receives notifications for matching R2 object events.
  const GetR2BucketEventNotificationArgs({
    required this.accountId,
    required this.bucketName,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'queueId': queueId,
    };
  }

  factory GetR2BucketEventNotificationArgs.fromMap(Map<String, dynamic> map) {
    return GetR2BucketEventNotificationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
    );
  }
}
