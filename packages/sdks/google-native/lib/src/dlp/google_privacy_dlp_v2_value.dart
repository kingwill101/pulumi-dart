// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value_day_of_week_value.dart';
import 'google_type_date.dart';
import 'google_type_time_of_day.dart';

/// Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a 'Value' is based on its representation as a UTF-8 encoded string. For example, if 'integer_value' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.
class GooglePrivacyDlpV2Value {
  /// boolean
  final pulumi.Input<bool>? booleanValue;
  /// date
  final pulumi.Input<GoogleTypeDate>? dateValue;
  /// day of week
  final pulumi.Input<GooglePrivacyDlpV2ValueDayOfWeekValue>? dayOfWeekValue;
  /// float
  final pulumi.Input<double>? floatValue;
  /// integer
  final pulumi.Input<String>? integerValue;
  /// string
  final pulumi.Input<String>? stringValue;
  /// time of day
  final pulumi.Input<GoogleTypeTimeOfDay>? timeValue;
  /// timestamp
  final pulumi.Input<String>? timestampValue;

  /// Creates a new [GooglePrivacyDlpV2Value].
  /// [booleanValue] boolean
  /// [dateValue] date
  /// [dayOfWeekValue] day of week
  /// [floatValue] float
  /// [integerValue] integer
  /// [stringValue] string
  /// [timeValue] time of day
  /// [timestampValue] timestamp
  GooglePrivacyDlpV2Value({
    this.booleanValue,
    this.dateValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timeValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'dateValue': ?pulumi.Input.mapOptionalInputValue<GoogleTypeDate, Map<String, dynamic>>(dateValue, (value) => value.toMap()),
      'dayOfWeekValue': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ValueDayOfWeekValue, String>(dayOfWeekValue, (value) => value.value),
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
      'stringValue': ?stringValue,
      'timeValue': ?pulumi.Input.mapOptionalInputValue<GoogleTypeTimeOfDay, Map<String, dynamic>>(timeValue, (value) => value.toMap()),
      'timestampValue': ?timestampValue,
    };
  }

  factory GooglePrivacyDlpV2Value.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Value(
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue']! as bool).input(),
      dateValue: map['dateValue'] == null ? null : (GoogleTypeDate.fromMap((map['dateValue']! as Map).cast<String, dynamic>())).input(),
      dayOfWeekValue: map['dayOfWeekValue'] == null ? null : (GooglePrivacyDlpV2ValueDayOfWeekValue.fromValue(map['dayOfWeekValue']! as String)).input(),
      floatValue: map['floatValue'] == null ? null : (map['floatValue']! as double).input(),
      integerValue: map['integerValue'] == null ? null : (map['integerValue']! as String).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue']! as String).input(),
      timeValue: map['timeValue'] == null ? null : (GoogleTypeTimeOfDay.fromMap((map['timeValue']! as Map).cast<String, dynamic>())).input(),
      timestampValue: map['timestampValue'] == null ? null : (map['timestampValue']! as String).input(),
    );
  }
}

