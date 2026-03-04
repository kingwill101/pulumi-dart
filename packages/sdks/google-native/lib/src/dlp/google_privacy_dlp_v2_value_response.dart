// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date_response.dart';
import 'google_type_time_of_day_response.dart';

/// Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a 'Value' is based on its representation as a UTF-8 encoded string. For example, if 'integer_value' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.
class GooglePrivacyDlpV2ValueResponse {
  /// boolean
  final pulumi.Input<bool> booleanValue;

  /// date
  final pulumi.Input<GoogleTypeDateResponse> dateValue;

  /// day of week
  final pulumi.Input<String> dayOfWeekValue;

  /// float
  final pulumi.Input<double> floatValue;

  /// integer
  final pulumi.Input<String> integerValue;

  /// string
  final pulumi.Input<String> stringValue;

  /// time of day
  final pulumi.Input<GoogleTypeTimeOfDayResponse> timeValue;

  /// timestamp
  final pulumi.Input<String> timestampValue;

  /// Creates a new [GooglePrivacyDlpV2ValueResponse].
  /// [booleanValue] boolean
  /// [dateValue] date
  /// [dayOfWeekValue] day of week
  /// [floatValue] float
  /// [integerValue] integer
  /// [stringValue] string
  /// [timeValue] time of day
  /// [timestampValue] timestamp
  GooglePrivacyDlpV2ValueResponse({
    required this.booleanValue,
    required this.dateValue,
    required this.dayOfWeekValue,
    required this.floatValue,
    required this.integerValue,
    required this.stringValue,
    required this.timeValue,
    required this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': booleanValue,
      'dateValue':
          pulumi.Input.mapInputValue<
            GoogleTypeDateResponse,
            Map<String, dynamic>
          >(dateValue, (value) => value.toMap()),
      'dayOfWeekValue': dayOfWeekValue,
      'floatValue': floatValue,
      'integerValue': integerValue,
      'stringValue': stringValue,
      'timeValue':
          pulumi.Input.mapInputValue<
            GoogleTypeTimeOfDayResponse,
            Map<String, dynamic>
          >(timeValue, (value) => value.toMap()),
      'timestampValue': timestampValue,
    };
  }

  factory GooglePrivacyDlpV2ValueResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ValueResponse(
      booleanValue: pulumi.Input.fromValue(map['booleanValue'] as bool),
      dateValue: pulumi.Input.fromValue(
        GoogleTypeDateResponse.fromMap(
          (map['dateValue']! as Map).cast<String, dynamic>(),
        ),
      ),
      dayOfWeekValue: pulumi.Input.fromValue(map['dayOfWeekValue'] as String),
      floatValue: pulumi.Input.fromValue(map['floatValue'] as double),
      integerValue: pulumi.Input.fromValue(map['integerValue'] as String),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
      timeValue: pulumi.Input.fromValue(
        GoogleTypeTimeOfDayResponse.fromMap(
          (map['timeValue']! as Map).cast<String, dynamic>(),
        ),
      ),
      timestampValue: pulumi.Input.fromValue(map['timestampValue'] as String),
    );
  }
}
