// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_time_zone_response.dart';

/// Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.
class GoogleTypeDateTimeResponse {
  /// Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without a day.
  final pulumi.Input<int> day;

  /// Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int> hours;

  /// Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
  final pulumi.Input<int> minutes;

  /// Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month.
  final pulumi.Input<int> month;

  /// Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0.
  final pulumi.Input<int> nanos;

  /// Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60 if it allows leap-seconds.
  final pulumi.Input<int> seconds;

  /// Time zone.
  final pulumi.Input<GoogleTypeTimeZoneResponse> timeZone;

  /// UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be represented as { seconds: -14400 }.
  final pulumi.Input<String> utcOffset;

  /// Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  final pulumi.Input<int> year;

  /// Creates a new [GoogleTypeDateTimeResponse].
  /// [day] Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without a day.
  /// [hours] Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
  /// [month] Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month.
  /// [nanos] Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0.
  /// [seconds] Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60 if it allows leap-seconds.
  /// [timeZone] Time zone.
  /// [utcOffset] UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be represented as { seconds: -14400 }.
  /// [year] Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  GoogleTypeDateTimeResponse({
    required this.day,
    required this.hours,
    required this.minutes,
    required this.month,
    required this.nanos,
    required this.seconds,
    required this.timeZone,
    required this.utcOffset,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hours': hours,
      'minutes': minutes,
      'month': month,
      'nanos': nanos,
      'seconds': seconds,
      'timeZone':
          pulumi.Input.mapInputValue<
            GoogleTypeTimeZoneResponse,
            Map<String, dynamic>
          >(timeZone, (value) => value.toMap()),
      'utcOffset': utcOffset,
      'year': year,
    };
  }

  factory GoogleTypeDateTimeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleTypeDateTimeResponse(
      day: pulumi.Input.fromValue(map['day'] as int),
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
      month: pulumi.Input.fromValue(map['month'] as int),
      nanos: pulumi.Input.fromValue(map['nanos'] as int),
      seconds: pulumi.Input.fromValue(map['seconds'] as int),
      timeZone: pulumi.Input.fromValue(
        GoogleTypeTimeZoneResponse.fromMap(
          (map['timeZone']! as Map).cast<String, dynamic>(),
        ),
      ),
      utcOffset: pulumi.Input.fromValue(map['utcOffset'] as String),
      year: pulumi.Input.fromValue(map['year'] as int),
    );
  }
}
