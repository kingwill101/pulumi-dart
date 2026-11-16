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
  /// Credential configuration for the upstream MCP server. For auth*type "bearer", either a raw token string (e.g. "sk-abc123"), which is wrapped server-side as `Authorization: Bearer &lt;token&gt;`, or a JSON-encoded object of the form `{"headers":{"Header-Name":"value",...}}` for custom or multiple static headers (e.g. Cloudflare Access service tokens: `{"headers":{"cf-access-client-id":"...","cf-access-client-secret":"..."}}`). For auth*type "oauth" with a pre-registered client, send a JSON-encoded object containing `auth_mode:"manual"`, `config.authorization_endpoint`, `config.token_endpoint`, and `registration_info.client_id`. Also provide `registration_info.redirect_uris` unless `isSharedOauthCallbackEnabled` is true. Optional fields include `config.issuer`, `config.revocation_endpoint`, `registration_info.scope`, and `registration_info.token_endpoint_auth_method`. Send the client secret in the separate `clientSecret` field. Omit `authCredentials` on update to preserve the existing configuration.
  final pulumi.Input<String?>? authCredentials;
  /// Authentication method used to connect to the upstream MCP server.
  /// Available values: "oauth", "bearer", "unauthenticated".
  final pulumi.Input<String> authType;
  /// Provides 'client*secret' for a pre-registered OAuth client. This field is accepted on create or update only when 'auth*credentials.auth*mode' is 'manual'. It is required when creating an MCP server with manual OAuth credentials or changing an existing server to use manual OAuth credentials. Omit 'client*secret' on update to preserve the existing secret. Provide a new 'client_secret' to rotate the secret. The secret is never returned by read, create, or update requests.
  final pulumi.Input<String?>? clientSecret;
  /// Optional description of the MCP server.
  final pulumi.Input<String?>? description;
  /// URL of the upstream MCP endpoint.
  final pulumi.Input<String> hostname;
  /// When true, per-user authorization uses the shared Cloudflare callback URL as the 'redirect*uri' instead of the portal callback URL. The default is false. Set 'is*shared*oauth*callback_enabled' to true to enable the shared Cloudflare callback URL for this MCP server.
  final pulumi.Input<bool?>? isSharedOauthCallbackEnabled;
  /// Display name for the MCP server.
  final pulumi.Input<String> name;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  final pulumi.Input<bool?>? secureWebGateway;
  /// Server-wide prompt capability overrides.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>?>? updatedPrompts;
  /// Server-wide tool capability overrides.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>?>? updatedTools;
  /// Unique identifier for the MCP server.
  final pulumi.Input<String> zeroTrustAccessAiControlsMcpServerId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerArgs].
  /// [accountId] Required.
  /// [authCredentials] Credential configuration for the upstream MCP server. For auth*type "bearer", either a raw token string (e.g. "sk-abc123"), which is wrapped server-side as `Authorization: Bearer &lt;token&gt;`, or a JSON-encoded object of the form `{"headers":{"Header-Name":"value",...}}` for custom or multiple static headers (e.g. Cloudflare Access service tokens: `{"headers":{"cf-access-client-id":"...","cf-access-client-secret":"..."}}`). For auth*type "oauth" with a pre-registered client, send a JSON-encoded object containing `auth_mode:"manual"`, `config.authorization_endpoint`, `config.token_endpoint`, and `registration_info.client_id`. Also provide `registration_info.redirect_uris` unless `isSharedOauthCallbackEnabled` is true. Optional fields include `config.issuer`, `config.revocation_endpoint`, `registration_info.scope`, and `registration_info.token_endpoint_auth_method`. Send the client secret in the separate `clientSecret` field. Omit `authCredentials` on update to preserve the existing configuration.
  /// [authType] Authentication method used to connect to the upstream MCP server.
  /// [clientSecret] Provides 'client*secret' for a pre-registered OAuth client. This field is accepted on create or update only when 'auth*credentials.auth*mode' is 'manual'. It is required when creating an MCP server with manual OAuth credentials or changing an existing server to use manual OAuth credentials. Omit 'client*secret' on update to preserve the existing secret. Provide a new 'client_secret' to rotate the secret. The secret is never returned by read, create, or update requests.
  /// [description] Optional description of the MCP server.
  /// [hostname] URL of the upstream MCP endpoint.
  /// [isSharedOauthCallbackEnabled] When true, per-user authorization uses the shared Cloudflare callback URL as the 'redirect*uri' instead of the portal callback URL. The default is false. Set 'is*shared*oauth*callback_enabled' to true to enable the shared Cloudflare callback URL for this MCP server.
  /// [name] Display name for the MCP server.
  /// [secureWebGateway] Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  /// [updatedPrompts] Server-wide prompt capability overrides.
  /// [updatedTools] Server-wide tool capability overrides.
  /// [zeroTrustAccessAiControlsMcpServerId] Unique identifier for the MCP server.
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
