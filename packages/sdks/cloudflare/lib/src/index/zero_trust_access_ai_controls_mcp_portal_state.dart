// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_portal_server.dart';

/// Input properties used for looking up and filtering ZeroTrustAccessAiControlsMcpPortal resources.
class ZeroTrustAccessAiControlsMcpPortalState {
  final pulumi.Input<String?>? accountId;
  /// Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  final pulumi.Input<bool?>? allowCodeMode;
  /// Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// Available values: "off", "opt*in", "default*on", "enforced".
  final pulumi.Input<String?>? codeMode;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? createdBy;
  /// Optional description of the MCP portal.
  final pulumi.Input<String?>? description;
  /// Hostname where the MCP portal is available.
  final pulumi.Input<String?>? hostname;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? modifiedBy;
  /// Display name for the MCP portal.
  final pulumi.Input<String?>? name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  final pulumi.Input<bool?>? secureWebGateway;
  /// MCP servers attached to the portal and their portal-specific settings.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServer>?>? servers;
  /// Unique identifier for the MCP portal.
  final pulumi.Input<String?>? zeroTrustAccessAiControlsMcpPortalId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortalState].
  /// [accountId] Optional.
  /// [allowCodeMode] Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  /// [codeMode] Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [description] Optional description of the MCP portal.
  /// [hostname] Hostname where the MCP portal is available.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Display name for the MCP portal.
  /// [secureWebGateway] Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  /// [servers] MCP servers attached to the portal and their portal-specific settings.
  /// [zeroTrustAccessAiControlsMcpPortalId] Unique identifier for the MCP portal.
  const ZeroTrustAccessAiControlsMcpPortalState({
    this.accountId,
    this.allowCodeMode,
    this.codeMode,
    this.createdAt,
    this.createdBy,
    this.description,
    this.hostname,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
    this.secureWebGateway,
    this.servers,
    this.zeroTrustAccessAiControlsMcpPortalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowCodeMode': ?allowCodeMode,
      'codeMode': ?codeMode,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'hostname': ?hostname,
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'name': ?name,
      'secureWebGateway': ?secureWebGateway,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpPortalServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpPortalServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zeroTrustAccessAiControlsMcpPortalId': ?zeroTrustAccessAiControlsMcpPortalId,
    };
  }

  factory ZeroTrustAccessAiControlsMcpPortalState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpPortalState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowCodeMode: (() { final guardedValue = map['allowCodeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      codeMode: (() { final guardedValue = map['codeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zeroTrustAccessAiControlsMcpPortalId: (() { final guardedValue = map['zeroTrustAccessAiControlsMcpPortalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
