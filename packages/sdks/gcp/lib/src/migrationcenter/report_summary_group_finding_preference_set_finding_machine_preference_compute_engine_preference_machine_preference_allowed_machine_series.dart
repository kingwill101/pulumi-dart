// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries {
  /// (Output)
  /// Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based
  /// on the displayName of
  /// cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  final pulumi.Input<String>? code;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries].
  /// [code] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceComputeEnginePreferenceMachinePreferenceAllowedMachineSeries(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
