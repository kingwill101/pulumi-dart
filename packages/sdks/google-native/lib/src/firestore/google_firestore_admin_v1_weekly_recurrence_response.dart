// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a recurring schedule that runs on a specified day of the week. The time zone is UTC.
class GoogleFirestoreAdminV1WeeklyRecurrenceResponse {
  /// The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
  final pulumi.Input<String> day;

  /// Creates a new [GoogleFirestoreAdminV1WeeklyRecurrenceResponse].
  /// [day] The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
  GoogleFirestoreAdminV1WeeklyRecurrenceResponse({required this.day});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'day': day};
  }

  factory GoogleFirestoreAdminV1WeeklyRecurrenceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleFirestoreAdminV1WeeklyRecurrenceResponse(
      day: pulumi.Input.fromValue(map['day'] as String),
    );
  }
}
