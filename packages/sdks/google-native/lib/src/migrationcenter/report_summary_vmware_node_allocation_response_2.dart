// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_vmware_node_response_2.dart';

/// Represents assets allocated to a specific VMWare Node type.
class ReportSummaryVmwareNodeAllocationResponse {
  /// Count of assets allocated to these nodes
  final pulumi.Input<String> allocatedAssetCount;
  /// Count of this node type to be provisioned
  final pulumi.Input<String> nodeCount;
  /// VMWare node type, e.g. "ve1-standard-72"
  final pulumi.Input<ReportSummaryVmwareNodeResponse> vmwareNode;

  /// Creates a new [ReportSummaryVmwareNodeAllocationResponse].
  /// [allocatedAssetCount] Count of assets allocated to these nodes
  /// [nodeCount] Count of this node type to be provisioned
  /// [vmwareNode] VMWare node type, e.g. "ve1-standard-72"
  ReportSummaryVmwareNodeAllocationResponse({
    required this.allocatedAssetCount,
    required this.nodeCount,
    required this.vmwareNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'nodeCount': nodeCount,
      'vmwareNode': pulumi.Input.mapInputValue<ReportSummaryVmwareNodeResponse, Map<String, dynamic>>(vmwareNode, (value) => value.toMap()),
    };
  }

  factory ReportSummaryVmwareNodeAllocationResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryVmwareNodeAllocationResponse(
      allocatedAssetCount: (map['allocatedAssetCount'] as String).input(),
      nodeCount: (map['nodeCount'] as String).input(),
      vmwareNode: (ReportSummaryVmwareNodeResponse.fromMap((map['vmwareNode'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

