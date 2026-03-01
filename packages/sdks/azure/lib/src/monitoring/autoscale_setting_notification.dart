// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_notification_email.dart';
import 'autoscale_setting_notification_webhook.dart';

class AutoscaleSettingNotification {
  /// A `email` block as defined below.
  final AutoscaleSettingNotificationEmail? email;
  /// One or more `webhook` blocks as defined below.
  final List<AutoscaleSettingNotificationWebhook>? webhooks;

  /// Creates a new [AutoscaleSettingNotification].
  /// [email] A `email` block as defined below.
  /// [webhooks] One or more `webhook` blocks as defined below.
  AutoscaleSettingNotification({
    this.email,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email == null ? null : email!.toMap(),
      'webhooks': ?webhooks == null ? null : pulumi.Input.encodeList<AutoscaleSettingNotificationWebhook, Map<String, dynamic>>(webhooks!, (value) => value.toMap()),
    };
  }

  factory AutoscaleSettingNotification.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingNotification(
      email: map['email'] == null ? null : AutoscaleSettingNotificationEmail.fromMap((map['email'] as Map).cast<String, dynamic>()),
      webhooks: map['webhooks'] == null ? null : pulumi.Input.decodeList<AutoscaleSettingNotificationWebhook>(map['webhooks'], (value) => AutoscaleSettingNotificationWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

