// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_servers_result_auth_config_summary.dart';
import 'get_zero_trust_access_ai_controls_mcp_servers_result_error_details.dart';
import 'get_zero_trust_access_ai_controls_mcp_servers_result_updated_prompt.dart';
import 'get_zero_trust_access_ai_controls_mcp_servers_result_updated_tool.dart';

class GetZeroTrustAccessAiControlsMcpServersResult {
  /// Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServersResultAuthConfigSummary> authConfigSummary;
  /// Available values: "oauth", "bearer", "unauthenticated".
  final pulumi.Input<String> authType;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> createdBy;
  final pulumi.Input<String> description;
  final pulumi.Input<String> error;
  final pulumi.Input<GetZeroTrustAccessAiControlsMcpServersResultErrorDetails> errorDetails;
  final pulumi.Input<String> hostname;
  /// server id
  final pulumi.Input<String> id;
  /// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. New public server creates default to true; existing servers default to false from migration until explicitly updated. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  final pulumi.Input<bool> isSharedOauthCallbackEnabled;
  final pulumi.Input<String> lastSuccessfulSync;
  final pulumi.Input<String> lastSynced;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> modifiedBy;
  final pulumi.Input<String> name;
  final pulumi.Input<List<Map<String, String>>> prompts;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway
  final pulumi.Input<bool> secureWebGateway;
  /// Current sync state of the server
  /// Available values: "waiting", "ready", "stale", "error".
  final pulumi.Input<String> status;
  final pulumi.Input<List<Map<String, String>>> tools;
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt>> updatedPrompts;
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool>> updatedTools;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServersResult].
  /// [authConfigSummary] Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  /// [authType] Available values: "oauth", "bearer", "unauthenticated".
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [description] Required.
  /// [error] Required.
  /// [errorDetails] Required.
  /// [hostname] Required.
  /// [id] server id
  /// [isSharedOauthCallbackEnabled] When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. New public server creates default to true; existing servers default to false from migration until explicitly updated. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  /// [lastSuccessfulSync] Required.
  /// [lastSynced] Required.
  /// [modifiedAt] Required.
  /// [modifiedBy] Required.
  /// [name] Required.
  /// [prompts] Required.
  /// [secureWebGateway] Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway
  /// [status] Current sync state of the server
  /// [tools] Required.
  /// [updatedPrompts] Required.
  /// [updatedTools] Required.
  const GetZeroTrustAccessAiControlsMcpServersResult({
    required this.authConfigSummary,
    required this.authType,
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
      secureWebGateway: pulumi.Input.fromValue(map['secureWebGateway'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      tools: pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(map['tools']!, (value) => (value as Map).cast<String, String>())),
      updatedPrompts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt>(map['updatedPrompts']!, (value) => GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>()))),
      updatedTools: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool>(map['updatedTools']!, (value) => GetZeroTrustAccessAiControlsMcpServersResultUpdatedTool.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
