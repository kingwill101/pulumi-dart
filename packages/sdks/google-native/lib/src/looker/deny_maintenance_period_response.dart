// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_response.dart';
import 'time_of_day_response.dart';

/// Specifies the maintenance denial period.
class DenyMaintenancePeriodResponse {
  /// End date of the deny maintenance period.
  final pulumi.Input<DateResponse> endDate;
  /// Start date of the deny maintenance period.
  final pulumi.Input<DateResponse> startDate;
  /// Time in UTC when the period starts and ends.
  final pulumi.Input<TimeOfDayResponse> time;

  /// Creates a new [DenyMaintenancePeriodResponse].
  /// [endDate] End date of the deny maintenance period.
  /// [startDate] Start date of the deny maintenance period.
  /// [time] Time in UTC when the period starts and ends.
  DenyMaintenancePeriodResponse({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': pulumi.Input.mapInputValue<DateResponse, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'startDate': pulumi.Input.mapInputValue<DateResponse, Map<String, dynamic>>(startDate, (value) => value.toMap()),
      'time': pulumi.Input.mapInputValue<TimeOfDayResponse, Map<String, dynamic>>(time, (value) => value.toMap()),
    };
  }

  factory DenyMaintenancePeriodResponse.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriodResponse(
      endDate: pulumi.Input.fromValue(DateResponse.fromMap((map['endDate']! as Map).cast<String, dynamic>())),
      startDate: pulumi.Input.fromValue(DateResponse.fromMap((map['startDate']! as Map).cast<String, dynamic>())),
      time: pulumi.Input.fromValue(TimeOfDayResponse.fromMap((map['time']! as Map).cast<String, dynamic>())),
    );
  }
}

