// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_sole_tenant_node_allocation_response.dart';

/// A set of findings that applies to assets destined for Sole-Tenant nodes.
class ReportSummarySoleTenantFindingResponse {
  /// Count of assets which are allocated
  final String allocatedAssetCount;
  /// Set of regions in which the assets are allocated
  final List<String> allocatedRegions;
  /// Set of per-nodetype allocation records
  final List<ReportSummarySoleTenantNodeAllocationResponse> nodeAllocations;

  /// Creates a new [ReportSummarySoleTenantFindingResponse].
  /// [allocatedAssetCount] Count of assets which are allocated
  /// [allocatedRegions] Set of regions in which the assets are allocated
  /// [nodeAllocations] Set of per-nodetype allocation records
  ReportSummarySoleTenantFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'allocatedRegions': allocatedRegions,
      'nodeAllocations': pulumi.Input.encodeList<ReportSummarySoleTenantNodeAllocationResponse, Map<String, dynamic>>(nodeAllocations, (value) => value.toMap()),
    };
  }

  factory ReportSummarySoleTenantFindingResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummarySoleTenantFindingResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      nodeAllocations: pulumi.Input.decodeList<ReportSummarySoleTenantNodeAllocationResponse>(map['nodeAllocations'], (value) => ReportSummarySoleTenantNodeAllocationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

