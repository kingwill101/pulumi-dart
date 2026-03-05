// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences_compute_engine_preferences_machine_preferences.dart';

class PreferenceSetVirtualMachinePreferencesComputeEnginePreferences {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan. Possible values: `LICENSE_TYPE_UNSPECIFIED`, `LICENSE_TYPE_DEFAULT`, `LICENSE_TYPE_BRING_YOUR_OWN_LICENSE`
  final pulumi.Input<String>? licenseType;
  /// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
  /// Structure is documented below.
  final pulumi.Input<PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences>? machinePreferences;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesComputeEnginePreferences].
  /// [licenseType] License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan. Possible values: `LICENSE_TYPE_UNSPECIFIED`, `LICENSE_TYPE_DEFAULT`, `LICENSE_TYPE_BRING_YOUR_OWN_LICENSE`
  /// [machinePreferences] The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
  PreferenceSetVirtualMachinePreferencesComputeEnginePreferences({
    this.licenseType,
    this.machinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType': ?licenseType,
      'machinePreferences': ?pulumi.Input.mapOptionalInputValue<PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences, Map<String, dynamic>>(machinePreferences, (value) => value.toMap()),
    };
  }

  factory PreferenceSetVirtualMachinePreferencesComputeEnginePreferences.fromMap(Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferencesComputeEnginePreferences(
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machinePreferences: (() { final guardedValue = map['machinePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

