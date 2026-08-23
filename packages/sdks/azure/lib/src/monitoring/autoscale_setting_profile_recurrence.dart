// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingProfileRecurrence {
  /// A list of days that this profile takes effect on. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  final pulumi.Input<List<String>> days;
  /// A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered (in 24-hour time). Possible values are from `0` to `23`.
  final pulumi.Input<int> hours;
  /// A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  final pulumi.Input<int> minutes;
  /// The Time Zone used for the `hours` field. A list of possible values can be found here). Defaults to `UTC`.
  final pulumi.Input<String>? timezone;

  /// Creates a new [AutoscaleSettingProfileRecurrence].
  /// [days] A list of days that this profile takes effect on. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  /// [hours] A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered (in 24-hour time). Possible values are from `0` to `23`.
  /// [minutes] A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  /// [timezone] The Time Zone used for the `hours` field. A list of possible values can be found here). Defaults to `UTC`.
  const AutoscaleSettingProfileRecurrence({
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
      days: pulumi.Input.fromValue((map['days'] as List).cast<String>()),
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
