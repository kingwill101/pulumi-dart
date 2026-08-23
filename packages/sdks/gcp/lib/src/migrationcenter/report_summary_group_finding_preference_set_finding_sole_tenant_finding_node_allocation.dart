// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_sole_tenant_finding_node_allocation_node.dart';

class ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation {
  /// (Output)
  /// Count of assets allocated to these nodes
  final pulumi.Input<String>? allocatedAssetCount;
  /// (Output)
  /// Count of this node type to be provisioned
  final pulumi.Input<String>? nodeCount;
  /// (Output)
  /// A Sole Tenant node type.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocationNode>>? nodes;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation].
  /// [allocatedAssetCount] (Output)
  /// [nodeCount] (Output)
  /// [nodes] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation({
    this.allocatedAssetCount,
    this.nodeCount,
    this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': ?allocatedAssetCount,
      'nodeCount': ?nodeCount,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocationNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocationNode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocation(
      allocatedAssetCount: (() { final guardedValue = map['allocatedAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocationNode>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFindingNodeAllocationNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
