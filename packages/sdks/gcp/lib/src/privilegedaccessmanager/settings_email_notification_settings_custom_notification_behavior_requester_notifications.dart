// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications {
  /// Notification mode for entitlement assigned.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? entitlementAssigned;
  /// Notification mode for grant activated.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? grantActivated;
  /// Notification mode for grant activation failed.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? grantActivationFailed;
  /// Notification mode for grant denied.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? grantDenied;
  /// Notification mode for grant ended.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? grantEnded;
  /// Notification mode for grant expired.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? grantExpired;
  /// Notification mode for grant externally modified.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? grantExternallyModified;
  /// Notification mode for grant revoked.
  /// Possible values are: `NOTIFICATION_MODE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? grantRevoked;

  /// Creates a new [SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications].
  /// [entitlementAssigned] Notification mode for entitlement assigned.
  /// [grantActivated] Notification mode for grant activated.
  /// [grantActivationFailed] Notification mode for grant activation failed.
  /// [grantDenied] Notification mode for grant denied.
  /// [grantEnded] Notification mode for grant ended.
  /// [grantExpired] Notification mode for grant expired.
  /// [grantExternallyModified] Notification mode for grant externally modified.
  /// [grantRevoked] Notification mode for grant revoked.
  SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications({
    this.entitlementAssigned,
    this.grantActivated,
    this.grantActivationFailed,
    this.grantDenied,
    this.grantEnded,
    this.grantExpired,
    this.grantExternallyModified,
    this.grantRevoked,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entitlementAssigned': ?entitlementAssigned,
      'grantActivated': ?grantActivated,
      'grantActivationFailed': ?grantActivationFailed,
      'grantDenied': ?grantDenied,
      'grantEnded': ?grantEnded,
      'grantExpired': ?grantExpired,
      'grantExternallyModified': ?grantExternallyModified,
      'grantRevoked': ?grantRevoked,
    };
  }

  factory SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications.fromMap(Map<String, dynamic> map) {
    return SettingsEmailNotificationSettingsCustomNotificationBehaviorRequesterNotifications(
      entitlementAssigned: map['entitlementAssigned'] == null ? null : (map['entitlementAssigned'] as String).input(),
      grantActivated: map['grantActivated'] == null ? null : (map['grantActivated'] as String).input(),
      grantActivationFailed: map['grantActivationFailed'] == null ? null : (map['grantActivationFailed'] as String).input(),
      grantDenied: map['grantDenied'] == null ? null : (map['grantDenied'] as String).input(),
      grantEnded: map['grantEnded'] == null ? null : (map['grantEnded'] as String).input(),
      grantExpired: map['grantExpired'] == null ? null : (map['grantExpired'] as String).input(),
      grantExternallyModified: map['grantExternallyModified'] == null ? null : (map['grantExternallyModified'] as String).input(),
      grantRevoked: map['grantRevoked'] == null ? null : (map['grantRevoked'] as String).input(),
    );
  }
}

