// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly {
  /// The occurrence of the week within the month.
  final pulumi.Input<int> week;
  /// The day of the occurrence. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final pulumi.Input<String> weekday;

  /// Creates a new [IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly].
  /// [week] The occurrence of the week within the month.
  /// [weekday] The day of the occurrence. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly({
    required this.week,
    required this.weekday,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'week': week,
      'weekday': weekday,
    };
  }

  factory IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly(
      week: (map['week'] as int).input(),
      weekday: (map['weekday'] as String).input(),
    );
  }
}

