// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_email_notification_settings_custom_notification_behavior_admin_notifications.dart';
import 'settings_email_notification_settings_custom_notification_behavior_approver_notifications.dart';
import 'settings_email_notification_settings_custom_notification_behavior_requester_notifications.dart';

class SettingsEmailNotificationSettingsCustomNotificationBehavior {
  /// Email notifications specific to Requesters.
  /// Structure is documented below.
  final pulumi.Input<SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications?>? adminNotifications;
  /// Email notifications specific to Approvers.
  /// Structure is documented below.
  final pulumi.Input<SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications?>? approverNotifications;
  /// Email notifications specific to Requesters.
  /// Structure is documented below.
  final pulumi.Input<SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications?>? requesterNotifications;

  /// Creates a new [SettingsEmailNotificationSettingsCustomNotificationBehavior].
  /// [adminNotifications] Email notifications specific to Requesters.
  /// [approverNotifications] Email notifications specific to Approvers.
  /// [requesterNotifications] Email notifications specific to Requesters.
  const SettingsEmailNotificationSettingsCustomNotificationBehavior({
    this.adminNotifications,
    this.approverNotifications,
    this.requesterNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': ?pulumi.Input.mapOptionalInputValue<SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': ?pulumi.Input.mapOptionalInputValue<SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'requesterNotifications': ?pulumi.Input.mapOptionalInputValue<SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications, Map<String, dynamic>>(requesterNotifications, (value) => value.toMap()),
    };
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehavior.fromMap(Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehavior(
      adminNotifications: (() { final guardedValue = map['adminNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      approverNotifications: (() { final guardedValue = map['approverNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requesterNotifications: (() { final guardedValue = map['requesterNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
