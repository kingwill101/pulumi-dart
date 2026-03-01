// ignore_for_file: unused_element, unnecessary_cast


class TriggerScheduleScheduleMonthly {
  /// The occurrence of the specified day during the month. For example, a `monthly` property with `weekday` and `week` values of `Sunday, -1` means the last Sunday of the month.
  final int? week;
  /// The day of the week on which the trigger runs. For example, a `monthly` property with a `weekday` value of `Sunday` means every Sunday of the month.
  final String weekday;

  /// Creates a new [TriggerScheduleScheduleMonthly].
  /// [week] The occurrence of the specified day during the month. For example, a `monthly` property with `weekday` and `week` values of `Sunday, -1` means the last Sunday of the month.
  /// [weekday] The day of the week on which the trigger runs. For example, a `monthly` property with a `weekday` value of `Sunday` means every Sunday of the month.
  TriggerScheduleScheduleMonthly({
    this.week,
    required this.weekday,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'week': ?week,
      'weekday': weekday,
    };
  }

  factory TriggerScheduleScheduleMonthly.fromMap(Map<String, dynamic> map) {
    return TriggerScheduleScheduleMonthly(
      week: map['week'] == null ? null : map['week'] as int,
      weekday: map['weekday'] as String,
    );
  }
}

