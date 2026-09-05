// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_server_filter.dart';

/// {@template pulumi_index_get_zero_trust_access_ai_controls_mcp_server_get_zero_trust_access_ai_controls_mcp_server_args_doc}
/// Arguments for getZeroTrustAccessAiControlsMcpServer.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_ai_controls_mcp_server_get_zero_trust_access_ai_controls_mcp_server_args_doc}
class GetZeroTrustAccessAiControlsMcpServerArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServerFilter?>? filter;
  /// Unique identifier for the MCP server.
  final pulumi.Input<String?>? id;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServerArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [id] Unique identifier for the MCP server.
  const GetZeroTrustAccessAiControlsMcpServerArgs({
    this.accountId,
    this.filter,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustAccessAiControlsMcpServerFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServerArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServerArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpServerFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
