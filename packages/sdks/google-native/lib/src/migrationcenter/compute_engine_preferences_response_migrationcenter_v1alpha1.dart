// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_preferences_response_migrationcenter_v1alpha1.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferencesResponseMigrationcenterV1alpha1 {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final pulumi.Input<String> licenseType;
  /// Preferences concerning the machine types to consider on Compute Engine.
  final pulumi.Input<MachinePreferencesResponseMigrationcenterV1alpha1> machinePreferences;
  /// Persistent disk type to use. If unspecified (default), all types are considered, based on available usage data.
  final pulumi.Input<String> persistentDiskType;

  /// Creates a new [ComputeEnginePreferencesResponseMigrationcenterV1alpha1].
  /// [licenseType] License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  /// [machinePreferences] Preferences concerning the machine types to consider on Compute Engine.
  /// [persistentDiskType] Persistent disk type to use. If unspecified (default), all types are considered, based on available usage data.
  const ComputeEnginePreferencesResponseMigrationcenterV1alpha1({
    required this.licenseType,
    required this.machinePreferences,
    required this.persistentDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType': licenseType,
      'machinePreferences': pulumi.Input.mapInputValue<MachinePreferencesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(machinePreferences, (value) => value.toMap()),
      'persistentDiskType': persistentDiskType,
    };
  }

  factory ComputeEnginePreferencesResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferencesResponseMigrationcenterV1alpha1(
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      machinePreferences: pulumi.Input.fromValue(MachinePreferencesResponseMigrationcenterV1alpha1.fromMap((map['machinePreferences']! as Map).cast<String, dynamic>())),
      persistentDiskType: pulumi.Input.fromValue(map['persistentDiskType'] as String),
    );
  }
}

