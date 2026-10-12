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
      hours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hours'])),
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
    );
  }
}
