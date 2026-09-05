// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_portal_server.dart';

/// {@template pulumi_index_zero_trust_access_ai_controls_mcp_portal_zero_trust_access_ai_controls_mcp_portal_args_doc}
/// The set of arguments for ZeroTrustAccessAiControlsMcpPortal.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_ai_controls_mcp_portal_zero_trust_access_ai_controls_mcp_portal_args_doc}
class ZeroTrustAccessAiControlsMcpPortalArgs {
  final pulumi.Input<String> accountId;
  /// Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  final pulumi.Input<bool?>? allowCodeMode;
  /// Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// Available values: "off", "opt*in", "default*on", "enforced".
  final pulumi.Input<String?>? codeMode;
  /// Optional description of the MCP portal.
  final pulumi.Input<String?>? description;
  /// Hostname where the MCP portal is available.
  final pulumi.Input<String> hostname;
  /// Display name for the MCP portal.
  final pulumi.Input<String> name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  final pulumi.Input<bool?>? secureWebGateway;
  /// MCP servers attached to the portal and their portal-specific settings.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServer>?>? servers;
  /// Unique identifier for the MCP portal.
  final pulumi.Input<String> zeroTrustAccessAiControlsMcpPortalId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortalArgs].
  /// [accountId] Required.
  /// [allowCodeMode] Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  /// [codeMode] Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// [description] Optional description of the MCP portal.
  /// [hostname] Hostname where the MCP portal is available.
  /// [name] Display name for the MCP portal.
  /// [secureWebGateway] Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  /// [servers] MCP servers attached to the portal and their portal-specific settings.
  /// [zeroTrustAccessAiControlsMcpPortalId] Unique identifier for the MCP portal.
  const ZeroTrustAccessAiControlsMcpPortalArgs({
    required this.accountId,
    this.allowCodeMode,
    this.codeMode,
    this.description,
    required this.hostname,
    required this.name,
    this.secureWebGateway,
    this.servers,
    required this.zeroTrustAccessAiControlsMcpPortalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'allowCodeMode': ?allowCodeMode,
      'codeMode': ?codeMode,
      'description': ?description,
      'hostname': hostname,
      'name': name,
      'secureWebGateway': ?secureWebGateway,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpPortalServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpPortalServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zeroTrustAccessAiControlsMcpPortalId': zeroTrustAccessAiControlsMcpPortalId,
    };
  }

  factory ZeroTrustAccessAiControlsMcpPortalArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpPortalArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      allowCodeMode: (() { final guardedValue = map['allowCodeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      codeMode: (() { final guardedValue = map['codeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zeroTrustAccessAiControlsMcpPortalId: pulumi.Input.fromValue(map['zeroTrustAccessAiControlsMcpPortalId'] as String),
    );
  }
}
