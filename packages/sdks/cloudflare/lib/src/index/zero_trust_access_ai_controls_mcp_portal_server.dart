// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_portal_server_updated_prompt.dart';
import 'zero_trust_access_ai_controls_mcp_portal_server_updated_tool.dart';

class ZeroTrustAccessAiControlsMcpPortalServer {
  /// Disable this server by default for clients connecting through the portal.
  final pulumi.Input<bool?>? defaultDisabled;
  /// Use end-user OAuth credentials when connecting this server to the portal.
  final pulumi.Input<bool?>? onBehalf;
  /// Unique identifier for the MCP server.
  final pulumi.Input<String> serverId;
  /// Portal-specific prompt overrides.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt>?>? updatedPrompts;
  /// Portal-specific tool overrides.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool>?>? updatedTools;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortalServer].
  /// [defaultDisabled] Disable this server by default for clients connecting through the portal.
  /// [onBehalf] Use end-user OAuth credentials when connecting this server to the portal.
  /// [serverId] Unique identifier for the MCP server.
  /// [updatedPrompts] Portal-specific prompt overrides.
  /// [updatedTools] Portal-specific tool overrides.
  const ZeroTrustAccessAiControlsMcpPortalServer({
    this.defaultDisabled,
    this.onBehalf,
    required this.serverId,
    this.updatedPrompts,
    this.updatedTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDisabled': ?defaultDisabled,
      'onBehalf': ?onBehalf,
      'serverId': serverId,
      'updatedPrompts': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt>, List<Map<String, dynamic>>>(updatedPrompts, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedTools': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool>, List<Map<String, dynamic>>>(updatedTools, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustAccessAiControlsMcpPortalServer.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpPortalServer(
      defaultDisabled: (() { final guardedValue = map['defaultDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      onBehalf: (() { final guardedValue = map['onBehalf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      updatedPrompts: (() { final guardedValue = map['updatedPrompts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedTools: (() { final guardedValue = map['updatedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
