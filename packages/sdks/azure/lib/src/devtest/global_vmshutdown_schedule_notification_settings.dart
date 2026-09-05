// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalVMShutdownScheduleNotificationSettings {
  /// E-mail address to which the notification will be sent.
  final pulumi.Input<String?>? email;
  /// Whether to enable pre-shutdown notifications. Possible values are `true` and `false`.
  final pulumi.Input<bool> enabled;
  /// Time in minutes between 15 and 120 before a shutdown event at which a notification will be sent. Defaults to `30`.
  final pulumi.Input<int?>? timeInMinutes;
  /// The webhook URL to which the notification will be sent.
  final pulumi.Input<String?>? webhookUrl;

  /// Creates a new [GlobalVMShutdownScheduleNotificationSettings].
  /// [email] E-mail address to which the notification will be sent.
  /// [enabled] Whether to enable pre-shutdown notifications. Possible values are `true` and `false`.
  /// [timeInMinutes] Time in minutes between 15 and 120 before a shutdown event at which a notification will be sent. Defaults to `30`.
  /// [webhookUrl] The webhook URL to which the notification will be sent.
  const GlobalVMShutdownScheduleNotificationSettings({
    this.email,
    required this.enabled,
    this.timeInMinutes,
    this.webhookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'enabled': enabled,
      'timeInMinutes': ?timeInMinutes,
      'webhookUrl': ?webhookUrl,
    };
  }

  factory GlobalVMShutdownScheduleNotificationSettings.fromMap(Map<String, dynamic> map) {
    return GlobalVMShutdownScheduleNotificationSettings(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      timeInMinutes: (() { final guardedValue = map['timeInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      webhookUrl: (() { final guardedValue = map['webhookUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
