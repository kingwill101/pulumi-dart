// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_sole_tenant_node_allocation_response_migrationcenter_v1alpha1.dart';

/// A set of findings that applies to assets destined for Sole-Tenant nodes.
class ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1 {
  /// Count of assets which are allocated
  final pulumi.Input<String> allocatedAssetCount;

  /// Set of regions in which the assets are allocated
  final pulumi.Input<List<String>> allocatedRegions;

  /// Set of per-nodetype allocation records
  final pulumi.Input<
    List<ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1>
  >
  nodeAllocations;

  /// Creates a new [ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1].
  /// [allocatedAssetCount] Count of assets which are allocated
  /// [allocatedRegions] Set of regions in which the assets are allocated
  /// [nodeAllocations] Set of per-nodetype allocation records
  ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'allocatedRegions': allocatedRegions,
      'nodeAllocations':
          pulumi.Input.mapInputValue<
            List<
              ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1
            >,
            List<Map<String, dynamic>>
          >(
            nodeAllocations,
            (value) =>
                pulumi.Input.encodeList<
                  ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1(
      allocatedAssetCount: pulumi.Input.fromValue(
        map['allocatedAssetCount'] as String,
      ),
      allocatedRegions: pulumi.Input.fromValue(
        (map['allocatedRegions'] as List).cast<String>(),
      ),
      nodeAllocations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1
        >(
          map['nodeAllocations']!,
          (value) =>
              ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
