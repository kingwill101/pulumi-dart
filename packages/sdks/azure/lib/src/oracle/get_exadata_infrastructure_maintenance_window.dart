// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExadataInfrastructureMaintenanceWindow {
  /// If true, enables the configuration of a custom action timeout (waiting period) between database servers patching operations.
  final pulumi.Input<bool> customActionTimeoutEnabled;
  final pulumi.Input<int> customActionTimeoutInMins;
  /// Days during the week when maintenance should be performed.
  final pulumi.Input<List<String>> daysOfWeeks;
  /// The window of hours during the day when maintenance should be performed.
  final pulumi.Input<List<int>> hoursOfDays;
  /// Lead time window allows user to set a lead time to prepare for a down time.
  final pulumi.Input<int> leadTimeInWeeks;
  /// If true, enables the monthly patching option.
  final pulumi.Input<bool> monthlyPatchingEnabled;
  /// A `months` block as defined below.
  final pulumi.Input<List<String>> months;
  /// Cloud Exadata Infrastructure node patching method.
  final pulumi.Input<String> patchingMode;
  /// The maintenance window scheduling preference.
  final pulumi.Input<String> preference;
  /// Weeks during the month when maintenance should be performed.
  final pulumi.Input<List<int>> weeksOfMonths;

  /// Creates a new [GetExadataInfrastructureMaintenanceWindow].
  /// [customActionTimeoutEnabled] If true, enables the configuration of a custom action timeout (waiting period) between database servers patching operations.
  /// [customActionTimeoutInMins] Required.
  /// [daysOfWeeks] Days during the week when maintenance should be performed.
  /// [hoursOfDays] The window of hours during the day when maintenance should be performed.
  /// [leadTimeInWeeks] Lead time window allows user to set a lead time to prepare for a down time.
  /// [monthlyPatchingEnabled] If true, enables the monthly patching option.
  /// [months] A `months` block as defined below.
  /// [patchingMode] Cloud Exadata Infrastructure node patching method.
  /// [preference] The maintenance window scheduling preference.
  /// [weeksOfMonths] Weeks during the month when maintenance should be performed.
  GetExadataInfrastructureMaintenanceWindow({
    required this.customActionTimeoutEnabled,
    required this.customActionTimeoutInMins,
    required this.daysOfWeeks,
    required this.hoursOfDays,
    required this.leadTimeInWeeks,
    required this.monthlyPatchingEnabled,
    required this.months,
    required this.patchingMode,
    required this.preference,
    required this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActionTimeoutEnabled': customActionTimeoutEnabled,
      'customActionTimeoutInMins': customActionTimeoutInMins,
      'daysOfWeeks': daysOfWeeks,
      'hoursOfDays': hoursOfDays,
      'leadTimeInWeeks': leadTimeInWeeks,
      'monthlyPatchingEnabled': monthlyPatchingEnabled,
      'months': months,
      'patchingMode': patchingMode,
      'preference': preference,
      'weeksOfMonths': weeksOfMonths,
    };
  }

  factory GetExadataInfrastructureMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureMaintenanceWindow(
      customActionTimeoutEnabled: (map['customActionTimeoutEnabled'] as bool).input(),
      customActionTimeoutInMins: (map['customActionTimeoutInMins'] as int).input(),
      daysOfWeeks: ((map['daysOfWeeks'] as List).cast<String>()).input(),
      hoursOfDays: ((map['hoursOfDays'] as List).cast<int>()).input(),
      leadTimeInWeeks: (map['leadTimeInWeeks'] as int).input(),
      monthlyPatchingEnabled: (map['monthlyPatchingEnabled'] as bool).input(),
      months: ((map['months'] as List).cast<String>()).input(),
      patchingMode: (map['patchingMode'] as String).input(),
      preference: (map['preference'] as String).input(),
      weeksOfMonths: ((map['weeksOfMonths'] as List).cast<int>()).input(),
    );
  }
}

