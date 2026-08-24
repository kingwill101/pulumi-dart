// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_portal_server_updated_prompt.dart';
import 'zero_trust_access_ai_controls_mcp_portal_server_updated_tool.dart';

class ZeroTrustAccessAiControlsMcpPortalServer {
  final pulumi.Input<bool?>? defaultDisabled;
  final pulumi.Input<bool?>? onBehalf;
  /// server id
  final pulumi.Input<String> serverId;
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt>?>? updatedPrompts;
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool>?>? updatedTools;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortalServer].
  /// [defaultDisabled] Optional.
  /// [onBehalf] Optional.
  /// [serverId] server id
  /// [updatedPrompts] Optional.
  /// [updatedTools] Optional.
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
