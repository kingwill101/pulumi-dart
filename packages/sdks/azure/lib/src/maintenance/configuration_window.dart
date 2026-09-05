// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationWindow {
  /// The duration of the maintenance window in HH:mm format.
  final pulumi.Input<String?>? duration;
  /// Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format.
  final pulumi.Input<String?>? expirationDateTime;
  /// The rate at which a maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules.
  final pulumi.Input<String?>? recurEvery;
  /// Effective start date of the maintenance window in YYYY-MM-DD hh:mm format.
  final pulumi.Input<String> startDateTime;
  /// The time zone for the maintenance window. A list of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
  final pulumi.Input<String> timeZone;

  /// Creates a new [ConfigurationWindow].
  /// [duration] The duration of the maintenance window in HH:mm format.
  /// [expirationDateTime] Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format.
  /// [recurEvery] The rate at which a maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules.
  /// [startDateTime] Effective start date of the maintenance window in YYYY-MM-DD hh:mm format.
  /// [timeZone] The time zone for the maintenance window. A list of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
  const ConfigurationWindow({
    this.duration,
    this.expirationDateTime,
    this.recurEvery,
    required this.startDateTime,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'expirationDateTime': ?expirationDateTime,
      'recurEvery': ?recurEvery,
      'startDateTime': startDateTime,
      'timeZone': timeZone,
    };
  }

  factory ConfigurationWindow.fromMap(Map<String, dynamic> map) {
    return ConfigurationWindow(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDateTime: (() { final guardedValue = map['expirationDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurEvery: (() { final guardedValue = map['recurEvery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDateTime: pulumi.Input.fromValue(map['startDateTime'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
