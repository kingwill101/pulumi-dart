// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil {
  final pulumi.Input<int> day;
  final pulumi.Input<int> month;
  final pulumi.Input<int> year;

  /// Creates a new [GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil].
  /// [day] Required.
  /// [month] Required.
  /// [year] Required.
  const GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil({
    required this.day,
    required this.month,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'month': month,
      'year': year,
    };
  }

  factory GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil(
      day: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['day'])),
      month: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['month'])),
      year: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['year'])),
    );
  }
}
