// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';

/// Set a patching window during which Windows and SQL patches will be applied.
class AutoPatchingSettings {
  /// Additional Patch to be enable or enabled on the SQL Virtual Machine.
  final pulumi.Input<String>? additionalVmPatch;
  /// Day of week to apply the patch on.
  final pulumi.Input<DayOfWeek>? dayOfWeek;
  /// Enable or disable autopatching on SQL virtual machine.
  final pulumi.Input<bool>? enable;
  /// Duration of patching.
  final pulumi.Input<int>? maintenanceWindowDuration;
  /// Hour of the day when patching is initiated. Local VM time.
  final pulumi.Input<int>? maintenanceWindowStartingHour;

  /// Creates a new [AutoPatchingSettings].
  /// [additionalVmPatch] Additional Patch to be enable or enabled on the SQL Virtual Machine.
  /// [dayOfWeek] Day of week to apply the patch on.
  /// [enable] Enable or disable autopatching on SQL virtual machine.
  /// [maintenanceWindowDuration] Duration of patching.
  /// [maintenanceWindowStartingHour] Hour of the day when patching is initiated. Local VM time.
  const AutoPatchingSettings({
    this.additionalVmPatch,
    this.dayOfWeek,
    this.enable,
    this.maintenanceWindowDuration,
    this.maintenanceWindowStartingHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVmPatch': ?additionalVmPatch,
      'dayOfWeek': ?pulumi.Input.mapOptionalInputValue<DayOfWeek, String>(dayOfWeek, (value) => value.wireValue),
      'enable': ?enable,
      'maintenanceWindowDuration': ?maintenanceWindowDuration,
      'maintenanceWindowStartingHour': ?maintenanceWindowStartingHour,
    };
  }

  factory AutoPatchingSettings.fromMap(Map<String, dynamic> map) {
    return AutoPatchingSettings(
      additionalVmPatch: (() { final guardedValue = map['additionalVmPatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DayOfWeek.fromValue(guardedValue as String)); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maintenanceWindowDuration: (() { final guardedValue = map['maintenanceWindowDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maintenanceWindowStartingHour: (() { final guardedValue = map['maintenanceWindowStartingHour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

