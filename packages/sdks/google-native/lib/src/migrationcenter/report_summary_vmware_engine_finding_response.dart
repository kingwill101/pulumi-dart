// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_vmware_node_allocation_response.dart';

/// A set of findings that applies to assets destined for VMWare Engine.
class ReportSummaryVMWareEngineFindingResponse {
  /// Count of assets which are allocated
  final pulumi.Input<String> allocatedAssetCount;
  /// Set of regions in which the assets were allocated
  final pulumi.Input<List<String>> allocatedRegions;
  /// Set of per-nodetype allocation records
  final pulumi.Input<List<ReportSummaryVMWareNodeAllocationResponse>> nodeAllocations;

  /// Creates a new [ReportSummaryVMWareEngineFindingResponse].
  /// [allocatedAssetCount] Count of assets which are allocated
  /// [allocatedRegions] Set of regions in which the assets were allocated
  /// [nodeAllocations] Set of per-nodetype allocation records
  const ReportSummaryVMWareEngineFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'allocatedRegions': allocatedRegions,
      'nodeAllocations': pulumi.Input.mapInputValue<List<ReportSummaryVMWareNodeAllocationResponse>, List<Map<String, dynamic>>>(nodeAllocations, (value) => pulumi.Input.encodeList<ReportSummaryVMWareNodeAllocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryVMWareEngineFindingResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryVMWareEngineFindingResponse(
      allocatedAssetCount: pulumi.Input.fromValue(map['allocatedAssetCount'] as String),
      allocatedRegions: pulumi.Input.fromValue((map['allocatedRegions'] as List).cast<String>()),
      nodeAllocations: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryVMWareNodeAllocationResponse>(map['nodeAllocations']!, (value) => ReportSummaryVMWareNodeAllocationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

