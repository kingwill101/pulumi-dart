// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries {
  /// (Output)
  /// Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based
  /// on the displayName of
  /// cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  final pulumi.Input<String?>? code;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries].
  /// [code] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
