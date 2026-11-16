// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_server_auth_config_summary.dart';
import 'zero_trust_access_ai_controls_mcp_server_error_details.dart';
import 'zero_trust_access_ai_controls_mcp_server_updated_prompt.dart';
import 'zero_trust_access_ai_controls_mcp_server_updated_tool.dart';

/// Input properties used for looking up and filtering ZeroTrustAccessAiControlsMcpServer resources.
class ZeroTrustAccessAiControlsMcpServerState {
  final pulumi.Input<String?>? accountId;
  /// Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  final pulumi.Input<ZeroTrustAccessAiControlsMcpServerAuthConfigSummary?>? authConfigSummary;
  /// Credential configuration for the upstream MCP server. For auth*type "bearer", either a raw token string (e.g. "sk-abc123"), which is wrapped server-side as `Authorization: Bearer &lt;token&gt;`, or a JSON-encoded object of the form `{"headers":{"Header-Name":"value",...}}` for custom or multiple static headers (e.g. Cloudflare Access service tokens: `{"headers":{"cf-access-client-id":"...","cf-access-client-secret":"..."}}`). For auth*type "oauth" with a pre-registered client, send a JSON-encoded object containing `auth_mode:"manual"`, `config.authorization_endpoint`, `config.token_endpoint`, and `registration_info.client_id`. Also provide `registration_info.redirect_uris` unless `isSharedOauthCallbackEnabled` is true. Optional fields include `config.issuer`, `config.revocation_endpoint`, `registration_info.scope`, and `registration_info.token_endpoint_auth_method`. Send the client secret in the separate `clientSecret` field. Omit `authCredentials` on update to preserve the existing configuration.
  final pulumi.Input<String?>? authCredentials;
  /// Authentication method used to connect to the upstream MCP server.
  /// Available values: "oauth", "bearer", "unauthenticated".
  final pulumi.Input<String?>? authType;
  /// Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// Available values: "notRequired", "required", "connected", "stale", "manual".
  final pulumi.Input<String?>? authenticationStatus;
  /// Provides 'client*secret' for a pre-registered OAuth client. This field is accepted on create or update only when 'auth*credentials.auth*mode' is 'manual'. It is required when creating an MCP server with manual OAuth credentials or changing an existing server to use manual OAuth credentials. Omit 'client*secret' on update to preserve the existing secret. Provide a new 'client_secret' to rotate the secret. The secret is never returned by read, create, or update requests.
  final pulumi.Input<String?>? clientSecret;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? createdBy;
  /// Optional description of the MCP server.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? error;
  final pulumi.Input<ZeroTrustAccessAiControlsMcpServerErrorDetails?>? errorDetails;
  /// URL of the upstream MCP endpoint.
  final pulumi.Input<String?>? hostname;
  /// When true, per-user authorization uses the shared Cloudflare callback URL as the 'redirect*uri' instead of the portal callback URL. The default is false. Set 'is*shared*oauth*callback_enabled' to true to enable the shared Cloudflare callback URL for this MCP server.
  final pulumi.Input<bool?>? isSharedOauthCallbackEnabled;
  final pulumi.Input<String?>? lastSuccessfulSync;
  final pulumi.Input<String?>? lastSynced;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? modifiedBy;
  /// Display name for the MCP server.
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<Map<String, String>>?>? prompts;
  /// Timestamp of the most recent successful admin OAuth registration.
  final pulumi.Input<String?>? registeredAt;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  final pulumi.Input<bool?>? secureWebGateway;
  final pulumi.Input<String?>? status;
  final pulumi.Input<List<Map<String, String>>?>? tools;
  /// Server-wide prompt capability overrides.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>?>? updatedPrompts;
  /// Server-wide tool capability overrides.
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>?>? updatedTools;
  /// Unique identifier for the MCP server.
  final pulumi.Input<String?>? zeroTrustAccessAiControlsMcpServerId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerState].
  /// [accountId] Optional.
  /// [authConfigSummary] Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  /// [authCredentials] Credential configuration for the upstream MCP server. For auth*type "bearer", either a raw token string (e.g. "sk-abc123"), which is wrapped server-side as `Authorization: Bearer &lt;token&gt;`, or a JSON-encoded object of the form `{"headers":{"Header-Name":"value",...}}` for custom or multiple static headers (e.g. Cloudflare Access service tokens: `{"headers":{"cf-access-client-id":"...","cf-access-client-secret":"..."}}`). For auth*type "oauth" with a pre-registered client, send a JSON-encoded object containing `auth_mode:"manual"`, `config.authorization_endpoint`, `config.token_endpoint`, and `registration_info.client_id`. Also provide `registration_info.redirect_uris` unless `isSharedOauthCallbackEnabled` is true. Optional fields include `config.issuer`, `config.revocation_endpoint`, `registration_info.scope`, and `registration_info.token_endpoint_auth_method`. Send the client secret in the separate `clientSecret` field. Omit `authCredentials` on update to preserve the existing configuration.
  /// [authType] Authentication method used to connect to the upstream MCP server.
  /// [authenticationStatus] Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// [clientSecret] Provides 'client*secret' for a pre-registered OAuth client. This field is accepted on create or update only when 'auth*credentials.auth*mode' is 'manual'. It is required when creating an MCP server with manual OAuth credentials or changing an existing server to use manual OAuth credentials. Omit 'client*secret' on update to preserve the existing secret. Provide a new 'client_secret' to rotate the secret. The secret is never returned by read, create, or update requests.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [description] Optional description of the MCP server.
  /// [error] Optional.
  /// [errorDetails] Optional.
  /// [hostname] URL of the upstream MCP endpoint.
  /// [isSharedOauthCallbackEnabled] When true, per-user authorization uses the shared Cloudflare callback URL as the 'redirect*uri' instead of the portal callback URL. The default is false. Set 'is*shared*oauth*callback_enabled' to true to enable the shared Cloudflare callback URL for this MCP server.
  /// [lastSuccessfulSync] Optional.
  /// [lastSynced] Optional.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Display name for the MCP server.
  /// [prompts] Optional.
  /// [registeredAt] Timestamp of the most recent successful admin OAuth registration.
  /// [secureWebGateway] Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  /// [status] Optional.
  /// [tools] Optional.
  /// [updatedPrompts] Server-wide prompt capability overrides.
  /// [updatedTools] Server-wide tool capability overrides.
  /// [zeroTrustAccessAiControlsMcpServerId] Unique identifier for the MCP server.
  const ZeroTrustAccessAiControlsMcpServerState({
    this.accountId,
    this.authConfigSummary,
    this.authCredentials,
    this.authType,
    this.authenticationStatus,
    this.clientSecret,
    this.createdAt,
    this.createdBy,
    this.description,
    this.error,
    this.errorDetails,
    this.hostname,
    this.isSharedOauthCallbackEnabled,
    this.lastSuccessfulSync,
    this.lastSynced,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
    this.prompts,
    this.registeredAt,
    this.secureWebGateway,
    this.status,
    this.tools,
    this.updatedPrompts,
    this.updatedTools,
    this.zeroTrustAccessAiControlsMcpServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'authConfigSummary': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessAiControlsMcpServerAuthConfigSummary, Map<String, dynamic>>(authConfigSummary, (value) => value.toMap()),
      'authCredentials': ?authCredentials,
      'authType': ?authType,
      'authenticationStatus': ?authenticationStatus,
      'clientSecret': ?clientSecret,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'error': ?error,
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessAiControlsMcpServerErrorDetails, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'hostname': ?hostname,
      'isSharedOauthCallbackEnabled': ?isSharedOauthCallbackEnabled,
      'lastSuccessfulSync': ?lastSuccessfulSync,
      'lastSynced': ?lastSynced,
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'name': ?name,
      'prompts': ?prompts,
      'registeredAt': ?registeredAt,
      'secureWebGateway': ?secureWebGateway,
      'status': ?status,
      'tools': ?tools,
      'updatedPrompts': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>, List<Map<String, dynamic>>>(updatedPrompts, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedTools': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpServerUpdatedTool>, List<Map<String, dynamic>>>(updatedTools, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zeroTrustAccessAiControlsMcpServerId': ?zeroTrustAccessAiControlsMcpServerId,
    };
  }

  factory ZeroTrustAccessAiControlsMcpServerState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpServerState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authConfigSummary: (() { final guardedValue = map['authConfigSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessAiControlsMcpServerAuthConfigSummary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authCredentials: (() { final guardedValue = map['authCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationStatus: (() { final guardedValue = map['authenticationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessAiControlsMcpServerErrorDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSharedOauthCallbackEnabled: (() { final guardedValue = map['isSharedOauthCallbackEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastSuccessfulSync: (() { final guardedValue = map['lastSuccessfulSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSynced: (() { final guardedValue = map['lastSynced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prompts: (() { final guardedValue = map['prompts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>())); })(),
      registeredAt: (() { final guardedValue = map['registeredAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>())); })(),
      updatedPrompts: (() { final guardedValue = map['updatedPrompts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedTools: (() { final guardedValue = map['updatedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zeroTrustAccessAiControlsMcpServerId: (() { final guardedValue = map['zeroTrustAccessAiControlsMcpServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
