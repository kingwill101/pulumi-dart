// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NotificationRecipientUser resources.
class NotificationRecipientUserState {
  /// The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  final pulumi.Input<String>? notificationType;
  /// The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [NotificationRecipientUserState].
  /// [apiManagementId] The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created.
  /// [notificationType] The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  /// [userId] The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created.
  NotificationRecipientUserState({
    pulumi.Output<String>? apiManagementId,
    pulumi.Output<String>? notificationType,
    pulumi.Output<String>? userId,
  }) :
      apiManagementId = pulumi.Input.asOptionalInput<String>(apiManagementId),
      notificationType = pulumi.Input.asOptionalInput<String>(notificationType),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'notificationType': ?notificationType,
      'userId': ?userId,
    };
  }

  factory NotificationRecipientUserState.fromMap(Map<String, dynamic> map) {
    return NotificationRecipientUserState(
      apiManagementId: map['apiManagementId'] == null ? null : pulumi.Output.create<String>(map['apiManagementId'] as String),
      notificationType: map['notificationType'] == null ? null : pulumi.Output.create<String>(map['notificationType'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

