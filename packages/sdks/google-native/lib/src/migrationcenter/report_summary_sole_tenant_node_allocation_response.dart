// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sole_tenant_node_type_response.dart';

/// Represents the assets allocated to a specific Sole-Tenant node type.
class ReportSummarySoleTenantNodeAllocationResponse {
  /// Count of assets allocated to these nodes
  final pulumi.Input<String> allocatedAssetCount;
  /// Sole Tenant node type, e.g. "m3-node-128-3904"
  final pulumi.Input<SoleTenantNodeTypeResponse> node;
  /// Count of this node type to be provisioned
  final pulumi.Input<String> nodeCount;

  /// Creates a new [ReportSummarySoleTenantNodeAllocationResponse].
  /// [allocatedAssetCount] Count of assets allocated to these nodes
  /// [node] Sole Tenant node type, e.g. "m3-node-128-3904"
  /// [nodeCount] Count of this node type to be provisioned
  const ReportSummarySoleTenantNodeAllocationResponse({
    required this.allocatedAssetCount,
    required this.node,
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'node': pulumi.Input.mapInputValue<SoleTenantNodeTypeResponse, Map<String, dynamic>>(node, (value) => value.toMap()),
      'nodeCount': nodeCount,
    };
  }

  factory ReportSummarySoleTenantNodeAllocationResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummarySoleTenantNodeAllocationResponse(
      allocatedAssetCount: pulumi.Input.fromValue(map['allocatedAssetCount'] as String),
      node: pulumi.Input.fromValue(SoleTenantNodeTypeResponse.fromMap((map['node']! as Map).cast<String, dynamic>())),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as String),
    );
  }
}

