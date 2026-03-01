// ignore_for_file: unused_element, unnecessary_cast


class TriggerRecurrenceSchedule {
  /// Specifies a list of hours when the trigger should run. Valid values are between 0 and 23.
  final List<int>? atTheseHours;
  /// Specifies a list of minutes when the trigger should run. Valid values are between 0 and 59.
  final List<int>? atTheseMinutes;
  /// Specifies a list of days when the trigger should run. Valid values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`.
  final List<String>? onTheseDays;

  /// Creates a new [TriggerRecurrenceSchedule].
  /// [atTheseHours] Specifies a list of hours when the trigger should run. Valid values are between 0 and 23.
  /// [atTheseMinutes] Specifies a list of minutes when the trigger should run. Valid values are between 0 and 59.
  /// [onTheseDays] Specifies a list of days when the trigger should run. Valid values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`.
  TriggerRecurrenceSchedule({
    this.atTheseHours,
    this.atTheseMinutes,
    this.onTheseDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atTheseHours': ?atTheseHours,
      'atTheseMinutes': ?atTheseMinutes,
      'onTheseDays': ?onTheseDays,
    };
  }

  factory TriggerRecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return TriggerRecurrenceSchedule(
      atTheseHours: map['atTheseHours'] == null ? null : (map['atTheseHours'] as List).cast<int>(),
      atTheseMinutes: map['atTheseMinutes'] == null ? null : (map['atTheseMinutes'] as List).cast<int>(),
      onTheseDays: map['onTheseDays'] == null ? null : (map['onTheseDays'] as List).cast<String>(),
    );
  }
}

