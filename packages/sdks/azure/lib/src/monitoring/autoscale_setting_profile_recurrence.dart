// ignore_for_file: unused_element, unnecessary_cast


class AutoscaleSettingProfileRecurrence {
  /// A list of days that this profile takes effect on. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final List<String> days;
  /// A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered (in 24-hour time). Possible values are from `0` to `23`.
  final int hours;
  /// A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  final int minutes;
  /// The Time Zone used for the `hours` field. A list of possible values can be found here). Defaults to `UTC`.
  final String? timezone;

  /// Creates a new [AutoscaleSettingProfileRecurrence].
  /// [days] A list of days that this profile takes effect on. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  /// [hours] A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered (in 24-hour time). Possible values are from `0` to `23`.
  /// [minutes] A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  /// [timezone] The Time Zone used for the `hours` field. A list of possible values can be found here). Defaults to `UTC`.
  AutoscaleSettingProfileRecurrence({
    required this.days,
    required this.hours,
    required this.minutes,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'hours': hours,
      'minutes': minutes,
      'timezone': ?timezone,
    };
  }

  factory AutoscaleSettingProfileRecurrence.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfileRecurrence(
      days: (map['days'] as List).cast<String>(),
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
    );
  }
}

