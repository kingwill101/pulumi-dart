// ignore_for_file: unused_element, unnecessary_cast


class AutoscaleSettingProfileFixedDate {
  /// Specifies the end date for the profile, formatted as an RFC3339 date string.
  final String end;
  /// Specifies the start date for the profile, formatted as an RFC3339 date string.
  final String start;
  /// The Time Zone of the `start` and `end` times. A list of [possible values can be found here](https://learn.microsoft.com/en-us/rest/api/monitor/autoscale-settings/create-or-update?view=rest-monitor-2022-10-01&tabs=HTTP#recurrentschedule). Defaults to `UTC`.
  final String? timezone;

  /// Creates a new [AutoscaleSettingProfileFixedDate].
  /// [end] Specifies the end date for the profile, formatted as an RFC3339 date string.
  /// [start] Specifies the start date for the profile, formatted as an RFC3339 date string.
  /// [timezone] The Time Zone of the `start` and `end` times. A list of [possible values can be found here](https://learn.microsoft.com/en-us/rest/api/monitor/autoscale-settings/create-or-update?view=rest-monitor-2022-10-01&tabs=HTTP#recurrentschedule). Defaults to `UTC`.
  AutoscaleSettingProfileFixedDate({
    required this.end,
    required this.start,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
      'timezone': ?timezone,
    };
  }

  factory AutoscaleSettingProfileFixedDate.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfileFixedDate(
      end: map['end'] as String,
      start: map['start'] as String,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
    );
  }
}

