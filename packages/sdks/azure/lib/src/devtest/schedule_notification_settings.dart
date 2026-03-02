// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleNotificationSettings {
  /// The status of the notification. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`
  final pulumi.Input<String>? status;
  /// Time in minutes before event at which notification will be sent.
  final pulumi.Input<int>? timeInMinutes;
  /// The webhook URL to which the notification will be sent.
  final pulumi.Input<String>? webhookUrl;

  /// Creates a new [ScheduleNotificationSettings].
  /// [status] The status of the notification. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`
  /// [timeInMinutes] Time in minutes before event at which notification will be sent.
  /// [webhookUrl] The webhook URL to which the notification will be sent.
  ScheduleNotificationSettings({
    this.status,
    this.timeInMinutes,
    this.webhookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'timeInMinutes': ?timeInMinutes,
      'webhookUrl': ?webhookUrl,
    };
  }

  factory ScheduleNotificationSettings.fromMap(Map<String, dynamic> map) {
    return ScheduleNotificationSettings(
      status: map['status'] == null ? null : (map['status'] as String).input(),
      timeInMinutes: map['timeInMinutes'] == null ? null : (map['timeInMinutes'] as int).input(),
      webhookUrl: map['webhookUrl'] == null ? null : (map['webhookUrl'] as String).input(),
    );
  }
}

