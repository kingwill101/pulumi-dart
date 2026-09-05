// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_portal_server_auth_config_summary.dart';
import 'get_zero_trust_access_ai_controls_mcp_portal_server_error_details.dart';
import 'get_zero_trust_access_ai_controls_mcp_portal_server_updated_prompt.dart';
import 'get_zero_trust_access_ai_controls_mcp_portal_server_updated_tool.dart';

class GetZeroTrustAccessAiControlsMcpPortalServer {
  /// Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpPortalServerAuthConfigSummary> authConfigSummary;
  /// Authentication method used to connect to the upstream MCP server.
  /// Available values: "oauth", "bearer", "unauthenticated".
  final pulumi.Input<String> authType;
  /// Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// Available values: "notRequired", "required", "connected", "stale", "manual".
  final pulumi.Input<String> authenticationStatus;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> createdBy;
  final pulumi.Input<bool> defaultDisabled;
  /// Optional description of the MCP server.
  final pulumi.Input<String> description;
  final pulumi.Input<String> error;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpPortalServerErrorDetails> errorDetails;
  /// URL of the upstream MCP endpoint.
  final pulumi.Input<String> hostname;
  /// Unique identifier for the MCP server.
  final pulumi.Input<String> id;
  /// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. New public server creates default to true; existing servers default to false from migration until explicitly updated. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  final pulumi.Input<bool> isSharedOauthCallbackEnabled;
  final pulumi.Input<String> lastSuccessfulSync;
  final pulumi.Input<String> lastSynced;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> modifiedBy;
  /// Display name for the MCP server.
  final pulumi.Input<String> name;
  final pulumi.Input<bool> onBehalf;
  final pulumi.Input<List<Map<String, String>>> prompts;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  final pulumi.Input<bool> secureWebGateway;
  /// Unique identifier for the MCP server.
  final pulumi.Input<String> serverId;
  /// Current sync state of the server
  /// Available values: "waiting", "ready", "stale", "error".
  final pulumi.Input<String> status;
  final pulumi.Input<List<Map<String, String>>> tools;
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt>> updatedPrompts;
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedTool>> updatedTools;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalServer].
  /// [authConfigSummary] Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  /// [authType] Authentication method used to connect to the upstream MCP server.
  /// [authenticationStatus] Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [defaultDisabled] Required.
  /// [description] Optional description of the MCP server.
  /// [error] Required.
  /// [errorDetails] Required.
  /// [hostname] URL of the upstream MCP endpoint.
  /// [id] Unique identifier for the MCP server.
  /// [isSharedOauthCallbackEnabled] When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. New public server creates default to true; existing servers default to false from migration until explicitly updated. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  /// [lastSuccessfulSync] Required.
  /// [lastSynced] Required.
  /// [modifiedAt] Required.
  /// [modifiedBy] Required.
  /// [name] Display name for the MCP server.
  /// [onBehalf] Required.
  /// [prompts] Required.
  /// [secureWebGateway] Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  /// [serverId] Unique identifier for the MCP server.
  /// [status] Current sync state of the server
  /// [tools] Required.
  /// [updatedPrompts] Required.
  /// [updatedTools] Required.
  const GetZeroTrustAccessAiControlsMcpPortalServer({
    required this.authConfigSummary,
    required this.authType,
    required this.authenticationStatus,
    required this.createdAt,
    required this.createdBy,
    required this.defaultDisabled,
    required this.description,
    required this.error,
    required this.errorDetails,
    required this.hostname,
    required this.id,
    required this.isSharedOauthCallbackEnabled,
    required this.lastSuccessfulSync,
    required this.lastSynced,
    required this.modifiedAt,
    required this.modifiedBy,
    required this.name,
    required this.onBehalf,
    required this.prompts,
    required this.secureWebGateway,
    required this.serverId,
    required this.status,
    required this.tools,
    required this.updatedPrompts,
    required this.updatedTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfigSummary': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpPortalServerAuthConfigSummary, Map<String, dynamic>>(authConfigSummary, (value) => value.toMap()),
      'authType': authType,
      'authenticationStatus': authenticationStatus,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'defaultDisabled': defaultDisabled,
      'description': description,
      'error': error,
      'errorDetails': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpPortalServerErrorDetails, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'hostname': hostname,
      'id': id,
      'isSharedOauthCallbackEnabled': isSharedOauthCallbackEnabled,
      'lastSuccessfulSync': lastSuccessfulSync,
      'lastSynced': lastSynced,
      'modifiedAt': modifiedAt,
      'modifiedBy': modifiedBy,
      'name': name,
      'onBehalf': onBehalf,
      'prompts': prompts,
      'secureWebGateway': secureWebGateway,
      'serverId': serverId,
      'status': status,
      'tools': tools,
      'updatedPrompts': pulumi.Input.mapInputValue<List<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt>, List<Map<String, dynamic>>>(updatedPrompts, (value) => pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedTools': pulumi.Input.mapInputValue<List<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedTool>, List<Map<String, dynamic>>>(updatedTools, (value) => pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedTool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalServer.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalServer(
      authConfigSummary: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpPortalServerAuthConfigSummary.fromMap((map['authConfigSummary']! as Map).cast<String, dynamic>())),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      authenticationStatus: pulumi.Input.fromValue(map['authenticationStatus'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      defaultDisabled: pulumi.Input.fromValue(map['defaultDisabled'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      error: pulumi.Input.fromValue(map['error'] as String),
      errorDetails: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpPortalServerErrorDetails.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isSharedOauthCallbackEnabled: pulumi.Input.fromValue(map['isSharedOauthCallbackEnabled'] as bool),
      lastSuccessfulSync: pulumi.Input.fromValue(map['lastSuccessfulSync'] as String),
      lastSynced: pulumi.Input.fromValue(map['lastSynced'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      modifiedBy: pulumi.Input.fromValue(map['modifiedBy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      onBehalf: pulumi.Input.fromValue(map['onBehalf'] as bool),
      prompts: pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(map['prompts']!, (value) => (value as Map).cast<String, String>())),
      secureWebGateway: pulumi.Input.fromValue(map['secureWebGateway'] as bool),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tools: pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(map['tools']!, (value) => (value as Map).cast<String, String>())),
      updatedPrompts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt>(map['updatedPrompts']!, (value) => GetZeroTrustAccessAiControlsMcpPortalServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>()))),
      updatedTools: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpPortalServerUpdatedTool>(map['updatedTools']!, (value) => GetZeroTrustAccessAiControlsMcpPortalServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
