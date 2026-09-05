// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_portal_filter.dart';
import 'get_zero_trust_access_ai_controls_mcp_portal_server.dart';

/// Result data returned by getZeroTrustAccessAiControlsMcpPortal.
class GetZeroTrustAccessAiControlsMcpPortalResult {
  final String? accountId;
  /// Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  final bool? allowCodeMode;
  /// Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// Available values: "off", "opt*in", "default*on", "enforced".
  final String? codeMode;
  final String? createdAt;
  final String? createdBy;
  /// Optional description of the MCP portal.
  final String? description;
  final GetZeroTrustAccessAiControlsMcpPortalFilter? filter;
  /// Hostname where the MCP portal is available.
  final String? hostname;
  /// Unique identifier for the MCP portal.
  final String? id;
  final String? modifiedAt;
  final String? modifiedBy;
  /// Display name for the MCP portal.
  final String? name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  final bool? secureWebGateway;
  final List<GetZeroTrustAccessAiControlsMcpPortalServer>? servers;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalResult].
  /// [accountId] Optional.
  /// [allowCodeMode] Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  /// [codeMode] Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [description] Optional description of the MCP portal.
  /// [filter] Optional.
  /// [hostname] Hostname where the MCP portal is available.
  /// [id] Unique identifier for the MCP portal.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Display name for the MCP portal.
  /// [secureWebGateway] Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  /// [servers] Optional.
  const GetZeroTrustAccessAiControlsMcpPortalResult({
    this.accountId,
    this.allowCodeMode,
    this.codeMode,
    this.createdAt,
    this.createdBy,
    this.description,
    this.filter,
    this.hostname,
    this.id,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
    this.secureWebGateway,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowCodeMode': ?allowCodeMode,
      'codeMode': ?codeMode,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'filter': ?filter?.toMap(),
      'hostname': ?hostname,
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'name': ?name,
      'secureWebGateway': ?secureWebGateway,
      'servers': ?(() { final guardedValue = servers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpPortalServer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowCodeMode: (() { final guardedValue = map['allowCodeMode']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      codeMode: (() { final guardedValue = map['codeMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustAccessAiControlsMcpPortalFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => GetZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
