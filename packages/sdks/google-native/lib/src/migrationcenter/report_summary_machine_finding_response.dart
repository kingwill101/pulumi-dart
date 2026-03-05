// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_machine_series_allocation_response_migrationcenter_v1alpha1.dart';

/// A set of findings that applies to assets of type Virtual/Physical Machine.
class ReportSummaryMachineFindingResponse {
  /// Count of assets which were allocated.
  final pulumi.Input<String> allocatedAssetCount;
  /// Set of disk types allocated to assets.
  final pulumi.Input<List<String>> allocatedDiskTypes;
  /// Set of regions in which the assets were allocated.
  final pulumi.Input<List<String>> allocatedRegions;
  /// Distribution of assets based on the Machine Series.
  final pulumi.Input<List<ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1>> machineSeriesAllocations;

  /// Creates a new [ReportSummaryMachineFindingResponse].
  /// [allocatedAssetCount] Count of assets which were allocated.
  /// [allocatedDiskTypes] Set of disk types allocated to assets.
  /// [allocatedRegions] Set of regions in which the assets were allocated.
  /// [machineSeriesAllocations] Distribution of assets based on the Machine Series.
  ReportSummaryMachineFindingResponse({
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
      'machineSeriesAllocations': pulumi.Input.mapInputValue<List<ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(machineSeriesAllocations, (value) => pulumi.Input.encodeList<ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryMachineFindingResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryMachineFindingResponse(
      allocatedAssetCount: pulumi.Input.fromValue(map['allocatedAssetCount'] as String),
      allocatedDiskTypes: pulumi.Input.fromValue((map['allocatedDiskTypes'] as List).cast<String>()),
      allocatedRegions: pulumi.Input.fromValue((map['allocatedRegions'] as List).cast<String>()),
      machineSeriesAllocations: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1>(map['machineSeriesAllocations']!, (value) => ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

