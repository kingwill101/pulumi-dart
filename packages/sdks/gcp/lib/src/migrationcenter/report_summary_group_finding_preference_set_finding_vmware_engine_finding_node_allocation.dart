// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_vmware_engine_finding_node_allocation_vmware_node.dart';

class ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocation {
  /// (Output)
  /// Count of assets allocated to these nodes
  final pulumi.Input<String>? allocatedAssetCount;
  /// (Output)
  /// Count of this node type to be provisioned
  final pulumi.Input<String>? nodeCount;
  /// (Output)
  /// A VMWare Engine Node
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode>>? vmwareNodes;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocation].
  /// [allocatedAssetCount] (Output)
  /// [nodeCount] (Output)
  /// [vmwareNodes] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocation({
    this.allocatedAssetCount,
    this.nodeCount,
    this.vmwareNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': ?allocatedAssetCount,
      'nodeCount': ?nodeCount,
      'vmwareNodes': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode>, List<Map<String, dynamic>>>(vmwareNodes, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocation.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocation(
      allocatedAssetCount: (() { final guardedValue = map['allocatedAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareNodes: (() { final guardedValue = map['vmwareNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFindingNodeAllocationVmwareNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
