// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_machine_preference_compute_engine_preference_machine_preference.dart';

class ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference {
  /// (Output)
  /// Possible values:
  /// LICENSE_TYPE_DEFAULT
  /// LICENSE_TYPE_BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String>? licenseType;
  /// (Output)
  /// The type of machines to consider when calculating virtual machine migration
  /// insights and recommendations.
  /// Not all machine types are available in all zones and regions.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference>>? machinePreferences;
  /// (Output)
  /// Possible values:
  /// PERSISTENT_DISK_TYPE_STANDARD
  /// PERSISTENT_DISK_TYPE_BALANCED
  /// PERSISTENT_DISK_TYPE_SSD
  final pulumi.Input<String>? persistentDiskType;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference].
  /// [licenseType] (Output)
  /// [machinePreferences] (Output)
  /// [persistentDiskType] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference({
    this.licenseType,
    this.machinePreferences,
    this.persistentDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType': ?licenseType,
      'machinePreferences': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference>, List<Map<String, dynamic>>>(machinePreferences, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'persistentDiskType': ?persistentDiskType,
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreference(
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machinePreferences: (() { final guardedValue = map['machinePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      persistentDiskType: (() { final guardedValue = map['persistentDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
