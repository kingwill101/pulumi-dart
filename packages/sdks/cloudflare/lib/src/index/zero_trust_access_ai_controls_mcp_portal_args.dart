// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_portal_server.dart';

/// {@template pulumi_index_zero_trust_access_ai_controls_mcp_portal_zero_trust_access_ai_controls_mcp_portal_args_doc}
/// The set of arguments for ZeroTrustAccessAiControlsMcpPortal.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_ai_controls_mcp_portal_zero_trust_access_ai_controls_mcp_portal_args_doc}
class ZeroTrustAccessAiControlsMcpPortalArgs {
  final pulumi.Input<String> accountId;
  /// Allow remote code execution in Dynamic Workers (beta)
  final pulumi.Input<bool?>? allowCodeMode;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> hostname;
  final pulumi.Input<String> name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway
  final pulumi.Input<bool?>? secureWebGateway;
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServer>?>? servers;
  /// portal id
  final pulumi.Input<String> zeroTrustAccessAiControlsMcpPortalId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortalArgs].
  /// [accountId] Required.
  /// [allowCodeMode] Allow remote code execution in Dynamic Workers (beta)
  /// [description] Optional.
  /// [hostname] Required.
  /// [name] Required.
  /// [secureWebGateway] Route outbound MCP traffic through Zero Trust Secure Web Gateway
  /// [servers] Optional.
  /// [zeroTrustAccessAiControlsMcpPortalId] portal id
  const ZeroTrustAccessAiControlsMcpPortalArgs({
    required this.accountId,
    this.allowCodeMode,
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zeroTrustAccessAiControlsMcpPortalId: pulumi.Input.fromValue(map['zeroTrustAccessAiControlsMcpPortalId'] as String),
    );
  }
}
