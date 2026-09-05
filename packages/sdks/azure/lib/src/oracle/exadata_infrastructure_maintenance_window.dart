// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExadataInfrastructureMaintenanceWindow {
  /// Days during the week when maintenance should be performed. Valid values are: `0` - represents time slot `0:00 - 3:59 UTC - 4` - represents time slot `4:00 - 7:59 UTC - 8` - represents time slot 8:00 - 11:59 UTC - 12 - represents time slot 12:00 - 15:59 UTC - 16 - represents time slot 16:00 - 19:59 UTC - 20 - represents time slot `20:00 - 23:59 UTC`. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<String>?>? daysOfWeeks;
  /// The window of hours during the day when maintenance should be performed. The window is a 4 hour slot. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<int>?>? hoursOfDays;
  /// Lead time window allows user to set a lead time to prepare for a down time. The lead time is in weeks and valid value is between `1` to `4`. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<int?>? leadTimeInWeeks;
  /// Months during the year when maintenance should be performed. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<String>?>? months;
  /// Cloud Exadata Infrastructure node patching method, either `ROLLING` or `NONROLLING`. Default value is `ROLLING`. IMPORTANT: Non-rolling infrastructure patching involves system down time. See [Oracle-Managed Infrastructure Maintenance Updates](https://docs.cloud.oracle.com/iaas/Content/Database/Concepts/examaintenance.htm#Oracle) for more information. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String?>? patchingMode;
  /// The maintenance window scheduling preference. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<String?>? preference;
  /// Weeks during the month when maintenance should be performed. Weeks start on the 1st, 8th, 15th, and 22nd days of the month, and have a duration of 7 days. Weeks start and end based on calendar dates, not days of the week. For example, to allow maintenance during the 2nd week of the month (from the 8th day to the 14th day of the month), use the value 2. Maintenance cannot be scheduled for the fifth week of months that contain more than 28 days. Note that this parameter works in conjunction with the daysOfWeek and hoursOfDay parameters to allow you to specify specific days of the week and hours that maintenance will be performed. Changing this forces a new Cloud Exadata Infrastructure to be created.
  final pulumi.Input<List<int>?>? weeksOfMonths;

  /// Creates a new [ExadataInfrastructureMaintenanceWindow].
  /// [daysOfWeeks] Days during the week when maintenance should be performed. Valid values are: `0` - represents time slot `0:00 - 3:59 UTC - 4` - represents time slot `4:00 - 7:59 UTC - 8` - represents time slot 8:00 - 11:59 UTC - 12 - represents time slot 12:00 - 15:59 UTC - 16 - represents time slot 16:00 - 19:59 UTC - 20 - represents time slot `20:00 - 23:59 UTC`. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [hoursOfDays] The window of hours during the day when maintenance should be performed. The window is a 4 hour slot. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [leadTimeInWeeks] Lead time window allows user to set a lead time to prepare for a down time. The lead time is in weeks and valid value is between `1` to `4`. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [months] Months during the year when maintenance should be performed. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [patchingMode] Cloud Exadata Infrastructure node patching method, either `ROLLING` or `NONROLLING`. Default value is `ROLLING`. IMPORTANT: Non-rolling infrastructure patching involves system down time. See [Oracle-Managed Infrastructure Maintenance Updates](https://docs.cloud.oracle.com/iaas/Content/Database/Concepts/examaintenance.htm#Oracle) for more information. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [preference] The maintenance window scheduling preference. Changing this forces a new Cloud Exadata Infrastructure to be created.
  /// [weeksOfMonths] Weeks during the month when maintenance should be performed. Weeks start on the 1st, 8th, 15th, and 22nd days of the month, and have a duration of 7 days. Weeks start and end based on calendar dates, not days of the week. For example, to allow maintenance during the 2nd week of the month (from the 8th day to the 14th day of the month), use the value 2. Maintenance cannot be scheduled for the fifth week of months that contain more than 28 days. Note that this parameter works in conjunction with the daysOfWeek and hoursOfDay parameters to allow you to specify specific days of the week and hours that maintenance will be performed. Changing this forces a new Cloud Exadata Infrastructure to be created.
  const ExadataInfrastructureMaintenanceWindow({
    this.daysOfWeeks,
    this.hoursOfDays,
    this.leadTimeInWeeks,
    this.months,
    this.patchingMode,
    this.preference,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': ?daysOfWeeks,
      'hoursOfDays': ?hoursOfDays,
      'leadTimeInWeeks': ?leadTimeInWeeks,
      'months': ?months,
      'patchingMode': ?patchingMode,
      'preference': ?preference,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory ExadataInfrastructureMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ExadataInfrastructureMaintenanceWindow(
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hoursOfDays: (() { final guardedValue = map['hoursOfDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      leadTimeInWeeks: (() { final guardedValue = map['leadTimeInWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      months: (() { final guardedValue = map['months']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      patchingMode: (() { final guardedValue = map['patchingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preference: (() { final guardedValue = map['preference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeksOfMonths: (() { final guardedValue = map['weeksOfMonths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
