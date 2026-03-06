// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_weekly_recurrence_day.dart';

/// Represents a recurring schedule that runs on a specified day of the week. The time zone is UTC.
class GoogleFirestoreAdminV1WeeklyRecurrence {
  /// The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
  final pulumi.Input<GoogleFirestoreAdminV1WeeklyRecurrenceDay>? day;

  /// Creates a new [GoogleFirestoreAdminV1WeeklyRecurrence].
  /// [day] The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
  const GoogleFirestoreAdminV1WeeklyRecurrence({
    this.day,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1WeeklyRecurrenceDay, String>(day, (value) => value.wireValue),
    };
  }

  factory GoogleFirestoreAdminV1WeeklyRecurrence.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1WeeklyRecurrence(
      day: (() { final guardedValue = map['day']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleFirestoreAdminV1WeeklyRecurrenceDay.fromValue(guardedValue as String)); })(),
    );
  }
}

