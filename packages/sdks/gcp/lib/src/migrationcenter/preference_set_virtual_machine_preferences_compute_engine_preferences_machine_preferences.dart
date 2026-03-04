// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_virtual_machine_preferences_compute_engine_preferences_machine_preferences_allowed_machine_series.dart';

class PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries
    >
  >?
  allowedMachineSeries;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences].
  /// [allowedMachineSeries] Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences({
    this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMachineSeries':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries
            >,
            List<Map<String, dynamic>>
          >(
            allowedMachineSeries,
            (value) =>
                pulumi.Input.encodeList<
                  PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences(
      allowedMachineSeries: (() {
        final guardedValue = map['allowedMachineSeries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries
          >(
            guardedValue,
            (value) =>
                PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
