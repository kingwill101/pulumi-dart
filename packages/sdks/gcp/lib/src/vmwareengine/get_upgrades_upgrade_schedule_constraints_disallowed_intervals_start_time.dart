// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime {
  final pulumi.Input<int> hours;
  final pulumi.Input<int> minutes;

  /// Creates a new [GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime].
  /// [hours] Required.
  /// [minutes] Required.
  const GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime(
      hours: pulumi.Input.fromValue((map['hours'] as num).toInt()),
      minutes: pulumi.Input.fromValue((map['minutes'] as num).toInt()),
    );
  }
}
