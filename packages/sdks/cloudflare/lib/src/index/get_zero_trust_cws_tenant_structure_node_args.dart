// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_tenant_structure_node_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_tenant_structure_node_get_zero_trust_cws_tenant_structure_node_args_doc}
/// Arguments for getZeroTrustCwsTenantStructureNode.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_tenant_structure_node_get_zero_trust_cws_tenant_structure_node_args_doc}
class GetZeroTrustCwsTenantStructureNodeArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCwsTenantStructureNodeFilter?>? filter;
  /// ID of the node to retrieve
  final pulumi.Input<String?>? nodeId;
  /// ID of the parent tenant structure
  final pulumi.Input<String> structureId;

  /// Creates a new [GetZeroTrustCwsTenantStructureNodeArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [filter] Optional.
  /// [nodeId] ID of the node to retrieve
  /// [structureId] ID of the parent tenant structure
  const GetZeroTrustCwsTenantStructureNodeArgs({
    required this.accountId,
    this.filter,
    this.nodeId,
    required this.structureId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsTenantStructureNodeFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'nodeId': ?nodeId,
      'structureId': structureId,
    };
  }

  factory GetZeroTrustCwsTenantStructureNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureNodeArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsTenantStructureNodeFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structureId: pulumi.Input.fromValue(map['structureId'] as String),
    );
  }
}
