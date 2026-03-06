// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_vmware_node_response.dart';

/// Represents assets allocated to a specific VMWare Node type.
class ReportSummaryVMWareNodeAllocationResponse {
  /// Count of assets allocated to these nodes
  final pulumi.Input<String> allocatedAssetCount;
  /// Count of this node type to be provisioned
  final pulumi.Input<String> nodeCount;
  /// VMWare node type, e.g. "ve1-standard-72"
  final pulumi.Input<ReportSummaryVMWareNodeResponse> vmwareNode;

  /// Creates a new [ReportSummaryVMWareNodeAllocationResponse].
  /// [allocatedAssetCount] Count of assets allocated to these nodes
  /// [nodeCount] Count of this node type to be provisioned
  /// [vmwareNode] VMWare node type, e.g. "ve1-standard-72"
  const ReportSummaryVMWareNodeAllocationResponse({
    required this.allocatedAssetCount,
    required this.nodeCount,
    required this.vmwareNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'nodeCount': nodeCount,
      'vmwareNode': pulumi.Input.mapInputValue<ReportSummaryVMWareNodeResponse, Map<String, dynamic>>(vmwareNode, (value) => value.toMap()),
    };
  }

  factory ReportSummaryVMWareNodeAllocationResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryVMWareNodeAllocationResponse(
      allocatedAssetCount: pulumi.Input.fromValue(map['allocatedAssetCount'] as String),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as String),
      vmwareNode: pulumi.Input.fromValue(ReportSummaryVMWareNodeResponse.fromMap((map['vmwareNode']! as Map).cast<String, dynamic>())),
    );
  }
}

