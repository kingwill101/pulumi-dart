// ignore_for_file: unused_element, unnecessary_cast


class SoftwareUpdateConfigurationScheduleMonthlyOccurrence {
  /// Day of the occurrence. Must be one of `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  final String day;
  /// Occurrence of the week within the month. Must be between `1` and `4`. `-1` for last week within the month.
  final int occurrence;

  /// Creates a new [SoftwareUpdateConfigurationScheduleMonthlyOccurrence].
  /// [day] Day of the occurrence. Must be one of `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  /// [occurrence] Occurrence of the week within the month. Must be between `1` and `4`. `-1` for last week within the month.
  SoftwareUpdateConfigurationScheduleMonthlyOccurrence({
    required this.day,
    required this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'occurrence': occurrence,
    };
  }

  factory SoftwareUpdateConfigurationScheduleMonthlyOccurrence.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationScheduleMonthlyOccurrence(
      day: map['day'] as String,
      occurrence: map['occurrence'] as int,
    );
  }
}

