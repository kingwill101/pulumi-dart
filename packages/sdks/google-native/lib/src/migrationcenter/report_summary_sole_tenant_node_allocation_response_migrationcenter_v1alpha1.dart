// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sole_tenant_node_type_response_migrationcenter_v1alpha1.dart';

/// Represents the assets allocated to a specific Sole-Tenant node type.
class ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1 {
  /// Count of assets allocated to these nodes
  final pulumi.Input<String> allocatedAssetCount;
  /// Sole Tenant node type, e.g. "m3-node-128-3904"
  final pulumi.Input<SoleTenantNodeTypeResponseMigrationcenterV1alpha1> node;
  /// Count of this node type to be provisioned
  final pulumi.Input<String> nodeCount;

  /// Creates a new [ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1].
  /// [allocatedAssetCount] Count of assets allocated to these nodes
  /// [node] Sole Tenant node type, e.g. "m3-node-128-3904"
  /// [nodeCount] Count of this node type to be provisioned
  const ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1({
    required this.allocatedAssetCount,
    required this.node,
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'node': pulumi.Input.mapInputValue<SoleTenantNodeTypeResponseMigrationcenterV1alpha1, Map<String, dynamic>>(node, (value) => value.toMap()),
      'nodeCount': nodeCount,
    };
  }

  factory ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1(
      allocatedAssetCount: pulumi.Input.fromValue(map['allocatedAssetCount'] as String),
      node: pulumi.Input.fromValue(SoleTenantNodeTypeResponseMigrationcenterV1alpha1.fromMap((map['node']! as Map).cast<String, dynamic>())),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as String),
    );
  }
}

