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
  /// Static credential for the upstream MCP server. For authType "bearer", either a raw token string (e.g. "sk-abc123"), which is wrapped server-side as `Authorization: Bearer &lt;token&gt;`, or a JSON-encoded object of the form `{"headers":{"Header-Name":"value",...}}` for custom or multiple static headers (e.g. Cloudflare Access service tokens: `{"headers":{"cf-access-client-id":"...","cf-access-client-secret":"..."}}`).
  final pulumi.Input<String?>? authCredentials;
  /// Authentication method used to connect to the upstream MCP server.
  /// Available values: "oauth", "bearer", "unauthenticated".
  final pulumi.Input<String?>? authType;
  /// Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// Available values: "notRequired", "required", "connected", "stale", "manual".
  final pulumi.Input<String?>? authenticationStatus;
  /// Pre-registered OAuth client*secret. Write-only - accepted on create/update when auth*credentials.auth*mode is 'manual'. Stored AES-GCM-encrypted in server*oauth_secrets; never returned by read endpoints.
  final pulumi.Input<String?>? clientSecret;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? createdBy;
  /// Optional description of the MCP server.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? error;
  final pulumi.Input<ZeroTrustAccessAiControlsMcpServerErrorDetails?>? errorDetails;
  /// URL of the upstream MCP endpoint.
  final pulumi.Input<String?>? hostname;
  /// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. Defaults to false (off); opt in per server by setting true.
  final pulumi.Input<bool?>? isSharedOauthCallbackEnabled;
  final pulumi.Input<String?>? lastSuccessfulSync;
  final pulumi.Input<String?>? lastSynced;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? modifiedBy;
  /// Display name for the MCP server.
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<Map<String, String>>?>? prompts;
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
  /// [authCredentials] Static credential for the upstream MCP server. For authType "bearer", either a raw token string (e.g. "sk-abc123"), which is wrapped server-side as `Authorization: Bearer &lt;token&gt;`, or a JSON-encoded object of the form `{"headers":{"Header-Name":"value",...}}` for custom or multiple static headers (e.g. Cloudflare Access service tokens: `{"headers":{"cf-access-client-id":"...","cf-access-client-secret":"..."}}`).
  /// [authType] Authentication method used to connect to the upstream MCP server.
  /// [authenticationStatus] Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// [clientSecret] Pre-registered OAuth client*secret. Write-only - accepted on create/update when auth*credentials.auth*mode is 'manual'. Stored AES-GCM-encrypted in server*oauth_secrets; never returned by read endpoints.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [description] Optional description of the MCP server.
  /// [error] Optional.
  /// [errorDetails] Optional.
  /// [hostname] URL of the upstream MCP endpoint.
  /// [isSharedOauthCallbackEnabled] When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. Defaults to false (off); opt in per server by setting true.
  /// [lastSuccessfulSync] Optional.
  /// [lastSynced] Optional.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Display name for the MCP server.
  /// [prompts] Optional.
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
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>())); })(),
      updatedPrompts: (() { final guardedValue = map['updatedPrompts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedPrompt>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedTools: (() { final guardedValue = map['updatedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpServerUpdatedTool>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zeroTrustAccessAiControlsMcpServerId: (() { final guardedValue = map['zeroTrustAccessAiControlsMcpServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
