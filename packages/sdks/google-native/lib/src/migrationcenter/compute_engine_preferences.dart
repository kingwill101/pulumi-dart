// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_preferences_license_type.dart';
import 'machine_preferences.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferences {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final pulumi.Input<ComputeEnginePreferencesLicenseType>? licenseType;

  /// Preferences concerning the machine types to consider on Compute Engine.
  final pulumi.Input<MachinePreferences>? machinePreferences;

  /// Creates a new [ComputeEnginePreferences].
  /// [licenseType] License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  /// [machinePreferences] Preferences concerning the machine types to consider on Compute Engine.
  ComputeEnginePreferences({this.licenseType, this.machinePreferences});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeEnginePreferencesLicenseType,
            String
          >(licenseType, (value) => value.wireValue),
      'machinePreferences':
          ?pulumi.Input.mapOptionalInputValue<
            MachinePreferences,
            Map<String, dynamic>
          >(machinePreferences, (value) => value.toMap()),
    };
  }

  factory ComputeEnginePreferences.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferences(
      licenseType: (() {
        final guardedValue = map['licenseType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeEnginePreferencesLicenseType.fromValue(guardedValue as String),
        );
      })(),
      machinePreferences: (() {
        final guardedValue = map['machinePreferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MachinePreferences.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
