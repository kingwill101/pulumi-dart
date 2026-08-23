// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_sole_tenant_finding_node_allocation.dart';

class ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding {
  /// (Output)
  /// Count of assets allocated to these nodes
  final pulumi.Input<String>? allocatedAssetCount;
  /// (Output)
  /// Set of regions in which the assets were allocated
  final pulumi.Input<List<String>>? allocatedRegions;
  /// (Output)
  /// Set of per-nodetype allocation records
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation>>? nodeAllocations;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding].
  /// [allocatedAssetCount] (Output)
  /// [allocatedRegions] (Output)
  /// [nodeAllocations] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding({
    this.allocatedAssetCount,
    this.allocatedRegions,
    this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': ?allocatedAssetCount,
      'allocatedRegions': ?allocatedRegions,
      'nodeAllocations': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation>, List<Map<String, dynamic>>>(nodeAllocations, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding(
      allocatedAssetCount: (() { final guardedValue = map['allocatedAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allocatedRegions: (() { final guardedValue = map['allocatedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeAllocations: (() { final guardedValue = map['nodeAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
