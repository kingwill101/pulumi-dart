// ignore_for_file: unused_element, unnecessary_cast


/// Set a patching window during which Windows and SQL patches will be applied.
class AutoPatchingSettingsResponse {
  /// Additional Patch to be enable or enabled on the SQL Virtual Machine.
  final String? additionalVmPatch;
  /// Day of week to apply the patch on.
  final String? dayOfWeek;
  /// Enable or disable autopatching on SQL virtual machine.
  final bool? enable;
  /// Duration of patching.
  final int? maintenanceWindowDuration;
  /// Hour of the day when patching is initiated. Local VM time.
  final int? maintenanceWindowStartingHour;

  /// Creates a new [AutoPatchingSettingsResponse].
  /// [additionalVmPatch] Additional Patch to be enable or enabled on the SQL Virtual Machine.
  /// [dayOfWeek] Day of week to apply the patch on.
  /// [enable] Enable or disable autopatching on SQL virtual machine.
  /// [maintenanceWindowDuration] Duration of patching.
  /// [maintenanceWindowStartingHour] Hour of the day when patching is initiated. Local VM time.
  AutoPatchingSettingsResponse({
    this.additionalVmPatch,
    this.dayOfWeek,
    this.enable,
    this.maintenanceWindowDuration,
    this.maintenanceWindowStartingHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVmPatch': ?additionalVmPatch,
      'dayOfWeek': ?dayOfWeek,
      'enable': ?enable,
      'maintenanceWindowDuration': ?maintenanceWindowDuration,
      'maintenanceWindowStartingHour': ?maintenanceWindowStartingHour,
    };
  }

  factory AutoPatchingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AutoPatchingSettingsResponse(
      additionalVmPatch: map['additionalVmPatch'] == null ? null : map['additionalVmPatch'] as String,
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      maintenanceWindowDuration: map['maintenanceWindowDuration'] == null ? null : map['maintenanceWindowDuration'] as int,
      maintenanceWindowStartingHour: map['maintenanceWindowStartingHour'] == null ? null : map['maintenanceWindowStartingHour'] as int,
    );
  }
}

