// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationWindow {
  /// The duration of the maintenance window in HH:mm format.
  final String? duration;
  /// Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format.
  final String? expirationDateTime;
  /// The rate at which a maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules.
  final String? recurEvery;
  /// Effective start date of the maintenance window in YYYY-MM-DD hh:mm format.
  final String startDateTime;
  /// The time zone for the maintenance window. A list of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
  final String timeZone;

  /// Creates a new [ConfigurationWindow].
  /// [duration] The duration of the maintenance window in HH:mm format.
  /// [expirationDateTime] Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format.
  /// [recurEvery] The rate at which a maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules.
  /// [startDateTime] Effective start date of the maintenance window in YYYY-MM-DD hh:mm format.
  /// [timeZone] The time zone for the maintenance window. A list of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
  ConfigurationWindow({
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
      duration: map['duration'] == null ? null : map['duration'] as String,
      expirationDateTime: map['expirationDateTime'] == null ? null : map['expirationDateTime'] as String,
      recurEvery: map['recurEvery'] == null ? null : map['recurEvery'] as String,
      startDateTime: map['startDateTime'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}

