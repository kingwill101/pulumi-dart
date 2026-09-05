// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_portals_result_server.dart';

class GetZeroTrustAccessAiControlsMcpPortalsResult {
  /// Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  final pulumi.Input<bool> allowCodeMode;
  /// Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// Available values: "off", "opt*in", "default*on", "enforced".
  final pulumi.Input<String> codeMode;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> createdBy;
  /// Optional description of the MCP portal.
  final pulumi.Input<String> description;
  /// Hostname where the MCP portal is available.
  final pulumi.Input<String> hostname;
  /// Unique identifier for the MCP portal.
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> modifiedBy;
  /// Display name for the MCP portal.
  final pulumi.Input<String> name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  final pulumi.Input<bool> secureWebGateway;
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpPortalsResultServer>> servers;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalsResult].
  /// [allowCodeMode] Deprecated: use `codeMode` for new integrations. `true` maps to any non-off Code Mode policy; `false` maps to `code_mode: off`. If both fields are sent, they must be consistent or the request returns a 400.
  /// [codeMode] Code Mode policy for this portal. `off`: Code Mode is unavailable; query parameters are ignored. `optIn`: Code Mode is off by default; clients turn it on with `?codemode=search_and_execute`. `defaultOn`: Code Mode is on by default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is always on; query parameters are ignored. Defaults to `optIn` when omitted on create. If both `codeMode` and `allowCodeMode` are sent, they must be consistent or the request returns a 400.
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [description] Optional description of the MCP portal.
  /// [hostname] Hostname where the MCP portal is available.
  /// [id] Unique identifier for the MCP portal.
  /// [modifiedAt] Required.
  /// [modifiedBy] Required.
  /// [name] Display name for the MCP portal.
  /// [secureWebGateway] Route outbound MCP traffic through Zero Trust Secure Web Gateway.
  /// [servers] Required.
  const GetZeroTrustAccessAiControlsMcpPortalsResult({
    required this.allowCodeMode,
    required this.codeMode,
    required this.createdAt,
    required this.createdBy,
    required this.description,
    required this.hostname,
    required this.id,
    required this.modifiedAt,
    required this.modifiedBy,
    required this.name,
    required this.secureWebGateway,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCodeMode': allowCodeMode,
      'codeMode': codeMode,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'description': description,
      'hostname': hostname,
      'id': id,
      'modifiedAt': modifiedAt,
      'modifiedBy': modifiedBy,
      'name': name,
      'secureWebGateway': secureWebGateway,
      'servers': pulumi.Input.mapInputValue<List<GetZeroTrustAccessAiControlsMcpPortalsResultServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpPortalsResultServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalsResult(
      allowCodeMode: pulumi.Input.fromValue(map['allowCodeMode'] as bool),
      codeMode: pulumi.Input.fromValue(map['codeMode'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      modifiedBy: pulumi.Input.fromValue(map['modifiedBy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secureWebGateway: pulumi.Input.fromValue(map['secureWebGateway'] as bool),
      servers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpPortalsResultServer>(map['servers']!, (value) => GetZeroTrustAccessAiControlsMcpPortalsResultServer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
