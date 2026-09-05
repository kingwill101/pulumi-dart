// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_portal_filter.dart';

/// {@template pulumi_index_get_zero_trust_access_ai_controls_mcp_portal_get_zero_trust_access_ai_controls_mcp_portal_args_doc}
/// Arguments for getZeroTrustAccessAiControlsMcpPortal.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_ai_controls_mcp_portal_get_zero_trust_access_ai_controls_mcp_portal_args_doc}
class GetZeroTrustAccessAiControlsMcpPortalArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpPortalFilter?>? filter;
  /// Unique identifier for the MCP portal.
  final pulumi.Input<String?>? id;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [id] Unique identifier for the MCP portal.
  const GetZeroTrustAccessAiControlsMcpPortalArgs({
    this.accountId,
    this.filter,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustAccessAiControlsMcpPortalFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpPortalFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
