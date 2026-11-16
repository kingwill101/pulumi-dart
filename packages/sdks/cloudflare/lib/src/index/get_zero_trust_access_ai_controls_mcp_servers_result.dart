// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_servers_result_auth_config_summary.dart';
import 'get_zero_trust_access_ai_controls_mcp_servers_result_error_details.dart';
import 'get_zero_trust_access_ai_controls_mcp_servers_result_updated_prompt.dart';
import 'get_zero_trust_access_ai_controls_mcp_servers_result_updated_tool.dart';

class GetZeroTrustAccessAiControlsMcpServersResult {
  /// Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary> authConfigSummary;
  /// Authentication method used to connect to the upstream MCP server.
  /// Available values: "oauth", "bearer", "unauthenticated".
  final pulumi.Input<String> authType;
  /// Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// Available values: "notRequired", "required", "connected", "stale", "manual".
  final pulumi.Input<String> authenticationStatus;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> createdBy;
  /// Optional description of the MCP server.
  final pulumi.Input<String> description;
  final pulumi.Input<String> error;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServersResultErrorDetails> errorDetails;
  /// URL of the upstream MCP endpoint.
  final pulumi.Input<String> hostname;
  /// Unique identifier for the MCP server.
  final pulumi.Input<String> id;
  /// When true, per-user authorization uses the shared Cloudflare callback URL as the 'redirect*uri' instead of the portal callback URL. The default is false. Set 'is*shared*oauth*callback_enabled' to true to enable the shared Cloudflare callback URL for this MCP server.
  final pulumi.Input<bool> isSharedOauthCallbackEnabled;
  final pulumi.Input<String> lastSuccessfulSync;
  final pulumi.Input<String> lastSynced;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> modifiedBy;
  /// Display name for the MCP server.
  final pulumi.Input<String> name;
  final pulumi.Input<List<Map<String, String>>> prompts;
  /// Timestamp of the most recent successful admin OAuth registration.
  final pulumi.Input<String> registeredAt;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  final pulumi.Input<bool> secureWebGateway;
  /// Current sync state of the server
  /// Available values: "waiting", "ready", "stale", "error".
  final pulumi.Input<String> status;
  final pulumi.Input<List<Map<String, String>>> tools;
  /// Server-wide prompt capability overrides.
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt>> updatedPrompts;
  /// Server-wide tool capability overrides.
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool>> updatedTools;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServersResult].
  /// [authConfigSummary] Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  /// [authType] Authentication method used to connect to the upstream MCP server.
  /// [authenticationStatus] Whether administrative authentication is required before capabilities can be synced. Manual OAuth is user-managed and has no administrative authentication flow.
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [description] Optional description of the MCP server.
  /// [error] Required.
  /// [errorDetails] Required.
  /// [hostname] URL of the upstream MCP endpoint.
  /// [id] Unique identifier for the MCP server.
  /// [isSharedOauthCallbackEnabled] When true, per-user authorization uses the shared Cloudflare callback URL as the 'redirect*uri' instead of the portal callback URL. The default is false. Set 'is*shared*oauth*callback_enabled' to true to enable the shared Cloudflare callback URL for this MCP server.
  /// [lastSuccessfulSync] Required.
  /// [lastSynced] Required.
  /// [modifiedAt] Required.
  /// [modifiedBy] Required.
  /// [name] Display name for the MCP server.
  /// [prompts] Required.
  /// [registeredAt] Timestamp of the most recent successful admin OAuth registration.
  /// [secureWebGateway] Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
  /// [status] Current sync state of the server
  /// [tools] Required.
  /// [updatedPrompts] Server-wide prompt capability overrides.
  /// [updatedTools] Server-wide tool capability overrides.
  const GetZeroTrustAccessAiControlsMcpServersResult({
    required this.authConfigSummary,
    required this.authType,
    required this.authenticationStatus,
    required this.createdAt,
    required this.createdBy,
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
    required this.prompts,
    required this.registeredAt,
    required this.secureWebGateway,
    required this.status,
    required this.tools,
    required this.updatedPrompts,
    required this.updatedTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfigSummary': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary, Map<String, dynamic>>(authConfigSummary, (value) => value.toMap()),
      'authType': authType,
      'authenticationStatus': authenticationStatus,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'description': description,
      'error': error,
      'errorDetails': pulumi.Input.mapInputValue<GetZeroTrustAccessAiControlsMcpServersResultErrorDetails, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'hostname': hostname,
      'id': id,
      'isSharedOauthCallbackEnabled': isSharedOauthCallbackEnabled,
      'lastSuccessfulSync': lastSuccessfulSync,
      'lastSynced': lastSynced,
      'modifiedAt': modifiedAt,
      'modifiedBy': modifiedBy,
      'name': name,
      'prompts': prompts,
      'registeredAt': registeredAt,
      'secureWebGateway': secureWebGateway,
      'status': status,
      'tools': tools,
      'updatedPrompts': pulumi.Input.mapInputValue<List<GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt>, List<Map<String, dynamic>>>(updatedPrompts, (value) => pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedTools': pulumi.Input.mapInputValue<List<GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool>, List<Map<String, dynamic>>>(updatedTools, (value) => pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServersResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServersResult(
      authConfigSummary: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary.fromMap((map['authConfigSummary']! as Map).cast<String, dynamic>())),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      authenticationStatus: pulumi.Input.fromValue(map['authenticationStatus'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      error: pulumi.Input.fromValue(map['error'] as String),
      errorDetails: pulumi.Input.fromValue(GetZeroTrustAccessAiControlsMcpServersResultErrorDetails.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isSharedOauthCallbackEnabled: pulumi.Input.fromValue(map['isSharedOauthCallbackEnabled'] as bool),
      lastSuccessfulSync: pulumi.Input.fromValue(map['lastSuccessfulSync'] as String),
      lastSynced: pulumi.Input.fromValue(map['lastSynced'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      modifiedBy: pulumi.Input.fromValue(map['modifiedBy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      prompts: pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(map['prompts']!, (value) => (value as Map).cast<String, String>())),
      registeredAt: pulumi.Input.fromValue(map['registeredAt'] as String),
      secureWebGateway: pulumi.Input.fromValue(map['secureWebGateway'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      tools: pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(map['tools']!, (value) => (value as Map).cast<String, String>())),
      updatedPrompts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt>(map['updatedPrompts']!, (value) => GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>()))),
      updatedTools: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool>(map['updatedTools']!, (value) => GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
