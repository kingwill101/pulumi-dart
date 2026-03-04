// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudExadataInfrastructurePropertiesMaintenanceWindow {
  /// Determines the amount of time the system will wait before the start of each
  /// database server patching operation. Custom action timeout is in minutes and
  /// valid value is between 15 to 120 (inclusive).
  final pulumi.Input<int>? customActionTimeoutMins;

  /// Days during the week when maintenance should be performed.
  final pulumi.Input<List<String>>? daysOfWeeks;

  /// The window of hours during the day when maintenance should be performed.
  /// The window is a 4 hour slot. Valid values are:
  /// 0 - represents time slot 0:00 - 3:59 UTC
  /// 4 - represents time slot 4:00 - 7:59 UTC
  /// 8 - represents time slot 8:00 - 11:59 UTC
  /// 12 - represents time slot 12:00 - 15:59 UTC
  /// 16 - represents time slot 16:00 - 19:59 UTC
  /// 20 - represents time slot 20:00 - 23:59 UTC
  final pulumi.Input<List<int>>? hoursOfDays;

  /// If true, enables the configuration of a custom action timeout (waiting
  /// period) between database server patching operations.
  final pulumi.Input<bool>? isCustomActionTimeoutEnabled;

  /// Lead time window allows user to set a lead time to prepare for a down time.
  /// The lead time is in weeks and valid value is between 1 to 4.
  final pulumi.Input<int>? leadTimeWeek;

  /// Months during the year when maintenance should be performed.
  final pulumi.Input<List<String>>? months;

  /// Cloud CloudExadataInfrastructure node patching method, either "ROLLING"
  /// or "NONROLLING". Default value is ROLLING.
  /// Possible values:
  /// PATCHING_MODE_UNSPECIFIED
  /// ROLLING
  /// NON_ROLLING
  final pulumi.Input<String>? patchingMode;

  /// The maintenance window scheduling preference.
  /// Possible values:
  /// MAINTENANCE_WINDOW_PREFERENCE_UNSPECIFIED
  /// CUSTOM_PREFERENCE
  /// NO_PREFERENCE
  final pulumi.Input<String>? preference;

  /// Weeks during the month when maintenance should be performed. Weeks start on
  /// the 1st, 8th, 15th, and 22nd days of the month, and have a duration of 7
  /// days. Weeks start and end based on calendar dates, not days of the week.
  final pulumi.Input<List<int>>? weeksOfMonths;

  /// Creates a new [CloudExadataInfrastructurePropertiesMaintenanceWindow].
  /// [customActionTimeoutMins] Determines the amount of time the system will wait before the start of each
  /// [daysOfWeeks] Days during the week when maintenance should be performed.
  /// [hoursOfDays] The window of hours during the day when maintenance should be performed.
  /// [isCustomActionTimeoutEnabled] If true, enables the configuration of a custom action timeout (waiting
  /// [leadTimeWeek] Lead time window allows user to set a lead time to prepare for a down time.
  /// [months] Months during the year when maintenance should be performed.
  /// [patchingMode] Cloud CloudExadataInfrastructure node patching method, either "ROLLING"
  /// [preference] The maintenance window scheduling preference.
  /// [weeksOfMonths] Weeks during the month when maintenance should be performed. Weeks start on
  CloudExadataInfrastructurePropertiesMaintenanceWindow({
    this.customActionTimeoutMins,
    this.daysOfWeeks,
    this.hoursOfDays,
    this.isCustomActionTimeoutEnabled,
    this.leadTimeWeek,
    this.months,
    this.patchingMode,
    this.preference,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActionTimeoutMins': ?customActionTimeoutMins,
      'daysOfWeeks': ?daysOfWeeks,
      'hoursOfDays': ?hoursOfDays,
      'isCustomActionTimeoutEnabled': ?isCustomActionTimeoutEnabled,
      'leadTimeWeek': ?leadTimeWeek,
      'months': ?months,
      'patchingMode': ?patchingMode,
      'preference': ?preference,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory CloudExadataInfrastructurePropertiesMaintenanceWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudExadataInfrastructurePropertiesMaintenanceWindow(
      customActionTimeoutMins: (() {
        final guardedValue = map['customActionTimeoutMins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      daysOfWeeks: (() {
        final guardedValue = map['daysOfWeeks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hoursOfDays: (() {
        final guardedValue = map['hoursOfDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      isCustomActionTimeoutEnabled: (() {
        final guardedValue = map['isCustomActionTimeoutEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      leadTimeWeek: (() {
        final guardedValue = map['leadTimeWeek'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      months: (() {
        final guardedValue = map['months'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      patchingMode: (() {
        final guardedValue = map['patchingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preference: (() {
        final guardedValue = map['preference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weeksOfMonths: (() {
        final guardedValue = map['weeksOfMonths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
    );
  }
}
