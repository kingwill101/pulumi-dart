// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_machine_preference_compute_engine_preference_machine_preference_allowed_machine_series.dart';

class ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference {
  /// (Output)
  /// Compute Engine machine series to consider for insights and recommendations.
  /// If empty, no restriction is applied on the machine series.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries>>? allowedMachineSeries;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference].
  /// [allowedMachineSeries] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference({
    this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMachineSeries': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries>, List<Map<String, dynamic>>>(allowedMachineSeries, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreference(
      allowedMachineSeries: (() { final guardedValue = map['allowedMachineSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
