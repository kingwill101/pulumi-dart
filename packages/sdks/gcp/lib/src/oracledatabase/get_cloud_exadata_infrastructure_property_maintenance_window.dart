// ignore_for_file: unused_element, unnecessary_cast


class GetCloudExadataInfrastructurePropertyMaintenanceWindow {
  /// Determines the amount of time the system will wait before the start of each
  /// database server patching operation. Custom action timeout is in minutes and
  /// valid value is between 15 to 120 (inclusive).
  final int customActionTimeoutMins;
  /// Days during the week when maintenance should be performed.
  final List<String> daysOfWeeks;
  /// The window of hours during the day when maintenance should be performed.
  /// The window is a 4 hour slot. Valid values are:
  /// 0 - represents time slot 0:00 - 3:59 UTC
  /// 4 - represents time slot 4:00 - 7:59 UTC
  /// 8 - represents time slot 8:00 - 11:59 UTC
  /// 12 - represents time slot 12:00 - 15:59 UTC
  /// 16 - represents time slot 16:00 - 19:59 UTC
  /// 20 - represents time slot 20:00 - 23:59 UTC
  final List<int> hoursOfDays;
  /// If true, enables the configuration of a custom action timeout (waiting
  /// period) between database server patching operations.
  final bool isCustomActionTimeoutEnabled;
  /// Lead time window allows user to set a lead time to prepare for a down time.
  /// The lead time is in weeks and valid value is between 1 to 4.
  final int leadTimeWeek;
  /// Months during the year when maintenance should be performed.
  final List<String> months;
  /// Cloud CloudExadataInfrastructure node patching method, either "ROLLING"
  /// or "NONROLLING". Default value is ROLLING.
  /// Possible values:
  /// PATCHING_MODE_UNSPECIFIED
  /// ROLLING
  /// NON_ROLLING
  final String patchingMode;
  /// The maintenance window scheduling preference.
  /// Possible values:
  /// MAINTENANCE_WINDOW_PREFERENCE_UNSPECIFIED
  /// CUSTOM_PREFERENCE
  /// NO_PREFERENCE
  final String preference;
  /// Weeks during the month when maintenance should be performed. Weeks start on
  /// the 1st, 8th, 15th, and 22nd days of the month, and have a duration of 7
  /// days. Weeks start and end based on calendar dates, not days of the week.
  final List<int> weeksOfMonths;

  /// Creates a new [GetCloudExadataInfrastructurePropertyMaintenanceWindow].
  /// [customActionTimeoutMins] Determines the amount of time the system will wait before the start of each
  /// [daysOfWeeks] Days during the week when maintenance should be performed.
  /// [hoursOfDays] The window of hours during the day when maintenance should be performed.
  /// [isCustomActionTimeoutEnabled] If true, enables the configuration of a custom action timeout (waiting
  /// [leadTimeWeek] Lead time window allows user to set a lead time to prepare for a down time.
  /// [months] Months during the year when maintenance should be performed.
  /// [patchingMode] Cloud CloudExadataInfrastructure node patching method, either "ROLLING"
  /// [preference] The maintenance window scheduling preference.
  /// [weeksOfMonths] Weeks during the month when maintenance should be performed. Weeks start on
  GetCloudExadataInfrastructurePropertyMaintenanceWindow({
    required this.customActionTimeoutMins,
    required this.daysOfWeeks,
    required this.hoursOfDays,
    required this.isCustomActionTimeoutEnabled,
    required this.leadTimeWeek,
    required this.months,
    required this.patchingMode,
    required this.preference,
    required this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActionTimeoutMins': customActionTimeoutMins,
      'daysOfWeeks': daysOfWeeks,
      'hoursOfDays': hoursOfDays,
      'isCustomActionTimeoutEnabled': isCustomActionTimeoutEnabled,
      'leadTimeWeek': leadTimeWeek,
      'months': months,
      'patchingMode': patchingMode,
      'preference': preference,
      'weeksOfMonths': weeksOfMonths,
    };
  }

  factory GetCloudExadataInfrastructurePropertyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructurePropertyMaintenanceWindow(
      customActionTimeoutMins: map['customActionTimeoutMins'] as int,
      daysOfWeeks: (map['daysOfWeeks'] as List).cast<String>(),
      hoursOfDays: (map['hoursOfDays'] as List).cast<int>(),
      isCustomActionTimeoutEnabled: map['isCustomActionTimeoutEnabled'] as bool,
      leadTimeWeek: map['leadTimeWeek'] as int,
      months: (map['months'] as List).cast<String>(),
      patchingMode: map['patchingMode'] as String,
      preference: map['preference'] as String,
      weeksOfMonths: (map['weeksOfMonths'] as List).cast<int>(),
    );
  }
}

