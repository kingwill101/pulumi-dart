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
      day: pulumi.Input.fromValue(map['day'] as int),
      month: pulumi.Input.fromValue(map['month'] as int),
      year: pulumi.Input.fromValue(map['year'] as int),
    );
  }
}
