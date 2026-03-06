// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_preferences_response.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferencesResponse {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final pulumi.Input<String> licenseType;
  /// Preferences concerning the machine types to consider on Compute Engine.
  final pulumi.Input<MachinePreferencesResponse> machinePreferences;

  /// Creates a new [ComputeEnginePreferencesResponse].
  /// [licenseType] License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  /// [machinePreferences] Preferences concerning the machine types to consider on Compute Engine.
  const ComputeEnginePreferencesResponse({
    required this.licenseType,
    required this.machinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType': licenseType,
      'machinePreferences': pulumi.Input.mapInputValue<MachinePreferencesResponse, Map<String, dynamic>>(machinePreferences, (value) => value.toMap()),
    };
  }

  factory ComputeEnginePreferencesResponse.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferencesResponse(
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      machinePreferences: pulumi.Input.fromValue(MachinePreferencesResponse.fromMap((map['machinePreferences']! as Map).cast<String, dynamic>())),
    );
  }
}

