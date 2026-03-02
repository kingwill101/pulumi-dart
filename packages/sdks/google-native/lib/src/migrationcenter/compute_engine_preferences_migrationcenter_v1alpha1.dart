// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_preferences_license_type_migrationcenter_v1alpha1.dart';
import 'compute_engine_preferences_persistent_disk_type.dart';
import 'machine_preferences_migrationcenter_v1alpha1.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferencesMigrationcenterV1alpha1 {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final pulumi.Input<ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1>? licenseType;
  /// Preferences concerning the machine types to consider on Compute Engine.
  final pulumi.Input<MachinePreferencesMigrationcenterV1alpha1>? machinePreferences;
  /// Persistent disk type to use. If unspecified (default), all types are considered, based on available usage data.
  final pulumi.Input<ComputeEnginePreferencesPersistentDiskType>? persistentDiskType;

  /// Creates a new [ComputeEnginePreferencesMigrationcenterV1alpha1].
  /// [licenseType] License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  /// [machinePreferences] Preferences concerning the machine types to consider on Compute Engine.
  /// [persistentDiskType] Persistent disk type to use. If unspecified (default), all types are considered, based on available usage data.
  ComputeEnginePreferencesMigrationcenterV1alpha1({
    this.licenseType,
    this.machinePreferences,
    this.persistentDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType': ?pulumi.Input.mapOptionalInputValue<ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1, String>(licenseType, (value) => value.value),
      'machinePreferences': ?pulumi.Input.mapOptionalInputValue<MachinePreferencesMigrationcenterV1alpha1, Map<String, dynamic>>(machinePreferences, (value) => value.toMap()),
      'persistentDiskType': ?pulumi.Input.mapOptionalInputValue<ComputeEnginePreferencesPersistentDiskType, String>(persistentDiskType, (value) => value.value),
    };
  }

  factory ComputeEnginePreferencesMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferencesMigrationcenterV1alpha1(
      licenseType: map['licenseType'] == null ? null : (ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1.fromValue(map['licenseType']! as String)).input(),
      machinePreferences: map['machinePreferences'] == null ? null : (MachinePreferencesMigrationcenterV1alpha1.fromMap((map['machinePreferences']! as Map).cast<String, dynamic>())).input(),
      persistentDiskType: map['persistentDiskType'] == null ? null : (ComputeEnginePreferencesPersistentDiskType.fromValue(map['persistentDiskType']! as String)).input(),
    );
  }
}

