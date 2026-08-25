// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications {
  /// Notification mode for grant activated.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? grantActivated;
  /// Notification mode for grant activation failed.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? grantActivationFailed;
  /// Notification mode for grant ended.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? grantEnded;
  /// Notification mode for grant externally modified.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? grantExternallyModified;

  /// Creates a new [SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications].
  /// [grantActivated] Notification mode for grant activated.
  /// [grantActivationFailed] Notification mode for grant activation failed.
  /// [grantEnded] Notification mode for grant ended.
  /// [grantExternallyModified] Notification mode for grant externally modified.
  const SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications({
    this.grantActivated,
    this.grantActivationFailed,
    this.grantEnded,
    this.grantExternallyModified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantActivated': ?grantActivated,
      'grantActivationFailed': ?grantActivationFailed,
      'grantEnded': ?grantEnded,
      'grantExternallyModified': ?grantExternallyModified,
    };
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications.fromMap(Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehaviorAdminNotifications(
      grantActivated: (() { final guardedValue = map['grantActivated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantActivationFailed: (() { final guardedValue = map['grantActivationFailed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantEnded: (() { final guardedValue = map['grantEnded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantExternallyModified: (() { final guardedValue = map['grantExternallyModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
