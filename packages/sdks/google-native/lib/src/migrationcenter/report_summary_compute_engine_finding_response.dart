// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_machine_series_allocation_response.dart';

/// A set of findings that applies to assets destined for Compute Engine.
class ReportSummaryComputeEngineFindingResponse {
  /// Count of assets which were allocated.
  final pulumi.Input<String> allocatedAssetCount;
  /// Set of disk types allocated to assets.
  final pulumi.Input<List<String>> allocatedDiskTypes;
  /// Set of regions in which the assets were allocated.
  final pulumi.Input<List<String>> allocatedRegions;
  /// Distribution of assets based on the Machine Series.
  final pulumi.Input<List<ReportSummaryMachineSeriesAllocationResponse>> machineSeriesAllocations;

  /// Creates a new [ReportSummaryComputeEngineFindingResponse].
  /// [allocatedAssetCount] Count of assets which were allocated.
  /// [allocatedDiskTypes] Set of disk types allocated to assets.
  /// [allocatedRegions] Set of regions in which the assets were allocated.
  /// [machineSeriesAllocations] Distribution of assets based on the Machine Series.
  ReportSummaryComputeEngineFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedDiskTypes,
    required this.allocatedRegions,
    required this.machineSeriesAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'allocatedDiskTypes': allocatedDiskTypes,
      'allocatedRegions': allocatedRegions,
      'machineSeriesAllocations': pulumi.Input.mapInputValue<List<ReportSummaryMachineSeriesAllocationResponse>, List<Map<String, dynamic>>>(machineSeriesAllocations, (value) => pulumi.Input.encodeList<ReportSummaryMachineSeriesAllocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryComputeEngineFindingResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryComputeEngineFindingResponse(
      allocatedAssetCount: (map['allocatedAssetCount'] as String).input(),
      allocatedDiskTypes: ((map['allocatedDiskTypes'] as List).cast<String>()).input(),
      allocatedRegions: ((map['allocatedRegions'] as List).cast<String>()).input(),
      machineSeriesAllocations: (pulumi.Input.decodeList<ReportSummaryMachineSeriesAllocationResponse>(map['machineSeriesAllocations'], (value) => ReportSummaryMachineSeriesAllocationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

