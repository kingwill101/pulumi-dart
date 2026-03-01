// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_notification_recipient_email_notification_recipient_email_args_doc}
/// The set of arguments for NotificationRecipientEmail.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_notification_recipient_email_notification_recipient_email_args_doc}
class NotificationRecipientEmailArgs {
  /// The ID of the API Management Service from which to create this Notification Recipient Email. Changing this forces a new API Management Notification Recipient Email to be created.
  final pulumi.Input<String> apiManagementId;
  /// The recipient email address. Changing this forces a new API Management Notification Recipient Email to be created.
  final pulumi.Input<String> email;
  /// The Notification Name to be received. Changing this forces a new API Management Notification Recipient Email to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  final pulumi.Input<String> notificationType;

  /// Creates a new [NotificationRecipientEmailArgs].
  /// [apiManagementId] The ID of the API Management Service from which to create this Notification Recipient Email. Changing this forces a new API Management Notification Recipient Email to be created.
  /// [email] The recipient email address. Changing this forces a new API Management Notification Recipient Email to be created.
  /// [notificationType] The Notification Name to be received. Changing this forces a new API Management Notification Recipient Email to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  NotificationRecipientEmailArgs({
    required pulumi.Output<String> apiManagementId,
    required pulumi.Output<String> email,
    required pulumi.Output<String> notificationType,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      email = pulumi.Input.asInput<String>(email),
      notificationType = pulumi.Input.asInput<String>(notificationType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'email': email,
      'notificationType': notificationType,
    };
  }

  factory NotificationRecipientEmailArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRecipientEmailArgs(
      apiManagementId: pulumi.Output.create<String>(map['apiManagementId'] as String),
      email: pulumi.Output.create<String>(map['email'] as String),
      notificationType: pulumi.Output.create<String>(map['notificationType'] as String),
    );
  }
}

