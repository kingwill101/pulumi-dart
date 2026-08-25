// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime {
  final pulumi.Input<int> hours;
  final pulumi.Input<int> minutes;

  /// Creates a new [GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime].
  /// [hours] Required.
  /// [minutes] Required.
  const GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime(
      hours: pulumi.Input.fromValue((map['hours'] as num).toInt()),
      minutes: pulumi.Input.fromValue((map['minutes'] as num).toInt()),
    );
  }
}
