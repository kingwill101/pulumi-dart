// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_compute_engine_finding_machine_series_allocation.dart';

class ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding {
  /// (Output)
  /// Count of assets allocated to these nodes
  final pulumi.Input<String?>? allocatedAssetCount;
  /// (Output)
  /// Set of disk types allocated to assets.
  final pulumi.Input<List<String>?>? allocatedDiskTypes;
  /// (Output)
  /// Set of regions in which the assets were allocated
  final pulumi.Input<List<String>?>? allocatedRegions;
  /// (Output)
  /// Distribution of assets based on the Machine Series.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation>?>? machineSeriesAllocations;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding].
  /// [allocatedAssetCount] (Output)
  /// [allocatedDiskTypes] (Output)
  /// [allocatedRegions] (Output)
  /// [machineSeriesAllocations] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding({
    this.allocatedAssetCount,
    this.allocatedDiskTypes,
    this.allocatedRegions,
    this.machineSeriesAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': ?allocatedAssetCount,
      'allocatedDiskTypes': ?allocatedDiskTypes,
      'allocatedRegions': ?allocatedRegions,
      'machineSeriesAllocations': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation>, List<Map<String, dynamic>>>(machineSeriesAllocations, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding(
      allocatedAssetCount: (() { final guardedValue = map['allocatedAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allocatedDiskTypes: (() { final guardedValue = map['allocatedDiskTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allocatedRegions: (() { final guardedValue = map['allocatedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      machineSeriesAllocations: (() { final guardedValue = map['machineSeriesAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFindingMachineSeriesAllocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
