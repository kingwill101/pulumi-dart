// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_notification_recipient_user_notification_recipient_user_args_doc}
/// The set of arguments for NotificationRecipientUser.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_notification_recipient_user_notification_recipient_user_args_doc}
class NotificationRecipientUserArgs {
  /// The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created.
  final pulumi.Input<String> apiManagementId;
  /// The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  final pulumi.Input<String> notificationType;
  /// The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created.
  final pulumi.Input<String> userId;

  /// Creates a new [NotificationRecipientUserArgs].
  /// [apiManagementId] The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created.
  /// [notificationType] The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  /// [userId] The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created.
  NotificationRecipientUserArgs({
    required pulumi.Output<String> apiManagementId,
    required pulumi.Output<String> notificationType,
    required pulumi.Output<String> userId,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      notificationType = pulumi.Input.asInput<String>(notificationType),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'notificationType': notificationType,
      'userId': userId,
    };
  }

  factory NotificationRecipientUserArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRecipientUserArgs(
      apiManagementId: pulumi.Output.create<String>(map['apiManagementId'] as String),
      notificationType: pulumi.Output.create<String>(map['notificationType'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

