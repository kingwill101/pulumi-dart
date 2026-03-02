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
  AutoscaleSettingNotificationEmail({
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
      customEmails: map['customEmails'] == null ? null : ((map['customEmails']! as List).cast<String>()).input(),
      sendToSubscriptionAdministrator: map['sendToSubscriptionAdministrator'] == null ? null : (map['sendToSubscriptionAdministrator']! as bool).input(),
      sendToSubscriptionCoAdministrator: map['sendToSubscriptionCoAdministrator'] == null ? null : (map['sendToSubscriptionCoAdministrator']! as bool).input(),
    );
  }
}

