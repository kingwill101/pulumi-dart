// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil {
  /// The day of the month (integer value between 1 and 31).
  final pulumi.Input<int> day;
  /// The month of the year (integer value between 1 and 12).
  final pulumi.Input<int> month;
  /// The year (integer value).
  final pulumi.Input<int> year;

  /// Creates a new [ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil].
  /// [day] The day of the month (integer value between 1 and 31).
  /// [month] The month of the year (integer value between 1 and 12).
  /// [year] The year (integer value).
  const ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil({
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

  factory ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil(
      day: pulumi.Input.fromValue((map['day'] as num).toInt()),
      month: pulumi.Input.fromValue((map['month'] as num).toInt()),
      year: pulumi.Input.fromValue((map['year'] as num).toInt()),
    );
  }
}
