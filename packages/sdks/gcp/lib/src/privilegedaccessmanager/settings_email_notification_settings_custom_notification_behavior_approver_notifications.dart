// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications {
  /// Notification mode for pending approval.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? pendingApproval;

  /// Creates a new [SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications].
  /// [pendingApproval] Notification mode for pending approval.
  const SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications({
    this.pendingApproval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pendingApproval': ?pendingApproval,
    };
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications.fromMap(Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehaviorApproverNotifications(
      pendingApproval: (() { final guardedValue = map['pendingApproval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
