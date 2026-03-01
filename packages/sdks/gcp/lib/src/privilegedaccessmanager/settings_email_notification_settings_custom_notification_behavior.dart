// ignore_for_file: unused_element, unnecessary_cast

import 'settings_email_notification_settings_custom_notification_behavior_admin_notifications.dart';
import 'settings_email_notification_settings_custom_notification_behavior_approver_notifications.dart';
import 'settings_email_notification_settings_custom_notification_behavior_requester_notifications.dart';

class SettingsEmailNotificationSettingsCustomNotificationBehavior {
  /// Email notifications specific to Requesters.
  /// Structure is documented below.
  final SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications? adminNotifications;
  /// Email notifications specific to Approvers.
  /// Structure is documented below.
  final SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications? approverNotifications;
  /// Email notifications specific to Requesters.
  /// Structure is documented below.
  final SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications? requesterNotifications;

  /// Creates a new [SettingsEmailNotificationSettingsCustomNotificationBehavior].
  /// [adminNotifications] Email notifications specific to Requesters.
  /// [approverNotifications] Email notifications specific to Approvers.
  /// [requesterNotifications] Email notifications specific to Requesters.
  SettingsEmailNotificationSettingsCustomNotificationBehavior({
    this.adminNotifications,
    this.approverNotifications,
    this.requesterNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': ?adminNotifications == null ? null : adminNotifications!.toMap(),
      'approverNotifications': ?approverNotifications == null ? null : approverNotifications!.toMap(),
      'requesterNotifications': ?requesterNotifications == null ? null : requesterNotifications!.toMap(),
    };
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehavior.fromMap(Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehavior(
      adminNotifications: map['adminNotifications'] == null ? null : SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null ? null : SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>()),
      requesterNotifications: map['requesterNotifications'] == null ? null : SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications.fromMap((map['requesterNotifications'] as Map).cast<String, dynamic>()),
    );
  }
}

