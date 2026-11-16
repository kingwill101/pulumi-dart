// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_tenant_structure_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_tenant_structure_get_zero_trust_cws_tenant_structure_args_doc}
/// Arguments for getZeroTrustCwsTenantStructure.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_tenant_structure_get_zero_trust_cws_tenant_structure_args_doc}
class GetZeroTrustCwsTenantStructureArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCwsTenantStructureFilter?>? filter;
  /// ID of the tenant structure to retrieve
  final pulumi.Input<String?>? structureId;

  /// Creates a new [GetZeroTrustCwsTenantStructureArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [filter] Optional.
  /// [structureId] ID of the tenant structure to retrieve
  const GetZeroTrustCwsTenantStructureArgs({
    required this.accountId,
    this.filter,
    this.structureId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsTenantStructureFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'structureId': ?structureId,
    };
  }

  factory GetZeroTrustCwsTenantStructureArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsTenantStructureFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      structureId: (() { final guardedValue = map['structureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
