// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingNotificationEmail {
  /// Specifies a list of custom email addresses to which the email notifications will be sent.
  final pulumi.Input<List<String>>? customEmails;
  /// Should email notifications be sent to the subscription administrator? Defaults to `false`.
  final pulumi.Input<bool>? sendToSubscriptionAdministrator;
  /// Should email notifications be sent to the subscription co-administrator? Defaults to `false`.
  final pulumi.Input<bool>? sendToSubscriptionCoAdministrator;

  /// Creates a new [AutoscaleSettingNotificationEmail].
  /// [customEmails] Specifies a list of custom email addresses to which the email notifications will be sent.
  /// [sendToSubscriptionAdministrator] Should email notifications be sent to the subscription administrator? Defaults to `false`.
  /// [sendToSubscriptionCoAdministrator] Should email notifications be sent to the subscription co-administrator? Defaults to `false`.
  const AutoscaleSettingNotificationEmail({
    this.customEmails,
    this.sendToSubscriptionAdministrator,
    this.sendToSubscriptionCoAdministrator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEmails': ?customEmails,
      'sendToSubscriptionAdministrator': ?sendToSubscriptionAdministrator,
      'sendToSubscriptionCoAdministrator': ?sendToSubscriptionCoAdministrator,
    };
  }

  factory AutoscaleSettingNotificationEmail.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingNotificationEmail(
      customEmails: (() { final guardedValue = map['customEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sendToSubscriptionAdministrator: (() { final guardedValue = map['sendToSubscriptionAdministrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendToSubscriptionCoAdministrator: (() { final guardedValue = map['sendToSubscriptionCoAdministrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

