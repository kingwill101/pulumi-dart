// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUpgradesUpgradeScheduleWeeklyWindowStartTime {
  final pulumi.Input<int> hours;
  final pulumi.Input<int> minutes;

  /// Creates a new [GetUpgradesUpgradeScheduleWeeklyWindowStartTime].
  /// [hours] Required.
  /// [minutes] Required.
  const GetUpgradesUpgradeScheduleWeeklyWindowStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory GetUpgradesUpgradeScheduleWeeklyWindowStartTime.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleWeeklyWindowStartTime(
      hours: pulumi.Input.fromValue((map['hours'] as num).toInt()),
      minutes: pulumi.Input.fromValue((map['minutes'] as num).toInt()),
    );
  }
}
