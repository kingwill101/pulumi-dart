// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_compute_engine_finding_machine_series_allocation_machine_series.dart';

class ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation {
  /// (Output)
  /// Count of assets allocated to these nodes
  final pulumi.Input<String>? allocatedAssetCount;
  /// (Output)
  /// A machine series, for a target product
  /// (e.g. Compute Engine, Google Cloud VMware Engine).
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries>>? machineSeries;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation].
  /// [allocatedAssetCount] (Output)
  /// [machineSeries] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation({
    this.allocatedAssetCount,
    this.machineSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': ?allocatedAssetCount,
      'machineSeries': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries>, List<Map<String, dynamic>>>(machineSeries, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation(
      allocatedAssetCount: (() { final guardedValue = map['allocatedAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineSeries: (() { final guardedValue = map['machineSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocationMachineSeries.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
