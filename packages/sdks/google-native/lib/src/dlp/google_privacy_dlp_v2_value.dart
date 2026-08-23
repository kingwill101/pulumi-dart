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
  const GooglePrivacyDlpV2Value({
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
      'dayOfWeekValue': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ValueDayOfWeekValue, String>(dayOfWeekValue, (value) => value.wireValue),
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
      'stringValue': ?stringValue,
      'timeValue': ?pulumi.Input.mapOptionalInputValue<GoogleTypeTimeOfDay, Map<String, dynamic>>(timeValue, (value) => value.toMap()),
      'timestampValue': ?timestampValue,
    };
  }

  factory GooglePrivacyDlpV2Value.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Value(
      booleanValue: (() { final guardedValue = map['booleanValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dateValue: (() { final guardedValue = map['dateValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeDate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dayOfWeekValue: (() { final guardedValue = map['dayOfWeekValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ValueDayOfWeekValue.fromValue(guardedValue as String)); })(),
      floatValue: (() { final guardedValue = map['floatValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      integerValue: (() { final guardedValue = map['integerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeValue: (() { final guardedValue = map['timeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeTimeOfDay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timestampValue: (() { final guardedValue = map['timestampValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
