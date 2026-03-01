// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NotificationRecipientEmail resources.
class NotificationRecipientEmailState {
  /// The ID of the API Management Service from which to create this Notification Recipient Email. Changing this forces a new API Management Notification Recipient Email to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The recipient email address. Changing this forces a new API Management Notification Recipient Email to be created.
  final pulumi.Input<String>? email;
  /// The Notification Name to be received. Changing this forces a new API Management Notification Recipient Email to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  final pulumi.Input<String>? notificationType;

  /// Creates a new [NotificationRecipientEmailState].
  /// [apiManagementId] The ID of the API Management Service from which to create this Notification Recipient Email. Changing this forces a new API Management Notification Recipient Email to be created.
  /// [email] The recipient email address. Changing this forces a new API Management Notification Recipient Email to be created.
  /// [notificationType] The Notification Name to be received. Changing this forces a new API Management Notification Recipient Email to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  NotificationRecipientEmailState({
    pulumi.Output<String>? apiManagementId,
    pulumi.Output<String>? email,
    pulumi.Output<String>? notificationType,
  }) :
      apiManagementId = pulumi.Input.asOptionalInput<String>(apiManagementId),
      email = pulumi.Input.asOptionalInput<String>(email),
      notificationType = pulumi.Input.asOptionalInput<String>(notificationType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'email': ?email,
      'notificationType': ?notificationType,
    };
  }

  factory NotificationRecipientEmailState.fromMap(Map<String, dynamic> map) {
    return NotificationRecipientEmailState(
      apiManagementId: map['apiManagementId'] == null ? null : pulumi.Output.create<String>(map['apiManagementId'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      notificationType: map['notificationType'] == null ? null : pulumi.Output.create<String>(map['notificationType'] as String),
    );
  }
}

