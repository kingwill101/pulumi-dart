// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_server_updated_prompt.dart';
import 'zero_trust_access_ai_controls_mcp_server_updated_tool.dart';

/// {@template pulumi_index_zero_trust_access_ai_controls_mcp_server_zero_trust_access_ai_controls_mcp_server_args_doc}
/// The set of arguments for ZeroTrustAccessAiControlsMcpServer.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_ai_controls_mcp_server_zero_trust_access_ai_controls_mcp_server_args_doc}
class ZeroTrustAccessAiControlsMcpServerArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? authCredentials;
  /// Available values: "oauth", "bearer", "unauthenticated".
  final pulumi.Input<String> authType;
  /// Pre-registered OAuth client*secret. Write-only - accepted on create/update when auth*credentials.auth*mode is 'manual'. Stored AES-GCM-encrypted in server*oauth_secrets; never returned by read endpoints.
  final pulumi.Input<String?>? clientSecret;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> hostname;
  /// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. Defaults to false (off); opt in per server by setting true. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  final pulumi.Input<bool?>? isSharedOauthCallbackEnabled;
  final pulumi.Input<String> name;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway
  final pulumi.Input<bool?>? secureWebGateway;
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>?>? updatedPrompts;
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>?>? updatedTools;
  /// server id
  final pulumi.Input<String> zeroTrustAccessAiControlsMcpServerId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerArgs].
  /// [accountId] Required.
  /// [authCredentials] Optional.
  /// [authType] Available values: "oauth", "bearer", "unauthenticated".
  /// [clientSecret] Pre-registered OAuth client*secret. Write-only - accepted on create/update when auth*credentials.auth*mode is 'manual'. Stored AES-GCM-encrypted in server*oauth_secrets; never returned by read endpoints.
  /// [description] Optional.
  /// [hostname] Required.
  /// [isSharedOauthCallbackEnabled] When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. Defaults to false (off); opt in per server by setting true. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  /// [name] Required.
  /// [secureWebGateway] Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway
  /// [updatedPrompts] Optional.
  /// [updatedTools] Optional.
  /// [zeroTrustAccessAiControlsMcpServerId] server id
  const ZeroTrustAccessAiControlsMcpServerArgs({
    required this.accountId,
    this.authCredentials,
    required this.authType,
    this.clientSecret,
    this.description,
    required this.hostname,
    this.isSharedOauthCallbackEnabled,
    required this.name,
    this.secureWebGateway,
    this.updatedPrompts,
    this.updatedTools,
    required this.zeroTrustAccessAiControlsMcpServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'authCredentials': ?authCredentials,
      'authType': authType,
      'clientSecret': ?clientSecret,
      'description': ?description,
      'hostname': hostname,
      'isSharedOauthCallbackEnabled': ?isSharedOauthCallbackEnabled,
      'name': name,
      'secureWebGateway': ?secureWebGateway,
      'updatedPrompts': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>, List<Map<String, dynamic>>>(updatedPrompts, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedTools': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>, List<Map<String, dynamic>>>(updatedTools, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zeroTrustAccessAiControlsMcpServerId': zeroTrustAccessAiControlsMcpServerId,
    };
  }

  factory ZeroTrustAccessAiControlsMcpServerArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpServerArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      authCredentials: (() { final guardedValue = map['authCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      isSharedOauthCallbackEnabled: (() { final guardedValue = map['isSharedOauthCallbackEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedPrompts: (() { final guardedValue = map['updatedPrompts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedTools: (() { final guardedValue = map['updatedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zeroTrustAccessAiControlsMcpServerId: pulumi.Input.fromValue(map['zeroTrustAccessAiControlsMcpServerId'] as String),
    );
  }
}
