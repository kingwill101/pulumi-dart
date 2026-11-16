// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterLustreExportConfigStartTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal to 0 and
  /// typically must be less than or equal to 23. An API may choose to allow the
  /// value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int?>? hours;
  /// Minutes of an hour. Must be greater than or equal to 0 and less than or
  /// equal to 59.
  final pulumi.Input<int?>? minutes;

  /// Creates a new [AiModelDevelopmentClusterLustreExportConfigStartTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal to 0 and
  /// [minutes] Minutes of an hour. Must be greater than or equal to 0 and less than or
  const AiModelDevelopmentClusterLustreExportConfigStartTime({
    this.hours,
    this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
    };
  }

  factory AiModelDevelopmentClusterLustreExportConfigStartTime.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterLustreExportConfigStartTime(
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
