// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_server_auth_config_summary.dart';
import 'get_zero_trust_access_ai_controls_mcp_server_error_details.dart';
import 'get_zero_trust_access_ai_controls_mcp_server_filter.dart';
import 'get_zero_trust_access_ai_controls_mcp_server_updated_prompt.dart';
import 'get_zero_trust_access_ai_controls_mcp_server_updated_tool.dart';

/// Result data returned by getZeroTrustAccessAiControlsMcpServer.
class GetZeroTrustAccessAiControlsMcpServerResult {
  final String? accountId;
  /// Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  final GetZeroTrustAccessAiControlsMcpServerAuthConfigSummary? authConfigSummary;
  /// Available values: "oauth", "bearer", "unauthenticated".
  final String? authType;
  final String? createdAt;
  final String? createdBy;
  final String? description;
  final String? error;
  final GetZeroTrustAccessAiControlsMcpServerErrorDetails? errorDetails;
  final GetZeroTrustAccessAiControlsMcpServerFilter? filter;
  final String? hostname;
  /// server id
  final String? id;
  /// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. New public server creates default to true; existing servers default to false from migration until explicitly updated. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  final bool? isSharedOauthCallbackEnabled;
  final String? lastSuccessfulSync;
  final String? lastSynced;
  final String? modifiedAt;
  final String? modifiedBy;
  final String? name;
  final List<Map<String, String>>? prompts;
  /// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway
  final bool? secureWebGateway;
  /// Current sync state of the server
  /// Available values: "waiting", "ready", "stale", "error".
  final String? status;
  final List<Map<String, String>>? tools;
  final List<GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt>? updatedPrompts;
  final List<GetZeroTrustAccessAiControlsMcpServerUpdatedTool>? updatedTools;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServerResult].
  /// [accountId] Optional.
  /// [authConfigSummary] Safe subset of auth*credentials surfaced to the dashboard. Includes auth*mode (dcr|manual), has*client*secret, client*secret*version, and the OAuth endpoints + client*id for manual servers. Never includes the secret value.
  /// [authType] Available values: "oauth", "bearer", "unauthenticated".
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [description] Optional.
  /// [error] Optional.
  /// [errorDetails] Optional.
  /// [filter] Optional.
  /// [hostname] Optional.
  /// [id] server id
  /// [isSharedOauthCallbackEnabled] When true, the gateway worker uses the shared Cloudflare-owned OAuth callback endpoint as the redirectUri for upstream on-behalf OAuth, instead of the customer portal hostname. New public server creates default to true; existing servers default to false from migration until explicitly updated. Effective behavior is gated by the gateway worker's per-env rollout mode KV key.
  /// [lastSuccessfulSync] Optional.
  /// [lastSynced] Optional.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Optional.
  /// [prompts] Optional.
  /// [secureWebGateway] Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway
  /// [status] Current sync state of the server
  /// [tools] Optional.
  /// [updatedPrompts] Optional.
  /// [updatedTools] Optional.
  const GetZeroTrustAccessAiControlsMcpServerResult({
    this.accountId,
    this.authConfigSummary,
    this.authType,
    this.createdAt,
    this.createdBy,
    this.description,
    this.error,
    this.errorDetails,
    this.filter,
    this.hostname,
    this.id,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'authConfigSummary': ?authConfigSummary?.toMap(),
      'authType': ?authType,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'error': ?error,
      'errorDetails': ?errorDetails?.toMap(),
      'filter': ?filter?.toMap(),
      'hostname': ?hostname,
      'id': ?id,
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
      'updatedPrompts': ?(() { final guardedValue = updatedPrompts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updatedTools': ?(() { final guardedValue = updatedTools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpServerUpdatedTool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServerResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServerResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authConfigSummary: (() { final guardedValue = map['authConfigSummary']; if (guardedValue == null) return null; return GetZeroTrustAccessAiControlsMcpServerAuthConfigSummary.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return GetZeroTrustAccessAiControlsMcpServerErrorDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustAccessAiControlsMcpServerFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSharedOauthCallbackEnabled: (() { final guardedValue = map['isSharedOauthCallbackEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastSuccessfulSync: (() { final guardedValue = map['lastSuccessfulSync']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSynced: (() { final guardedValue = map['lastSynced']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prompts: (() { final guardedValue = map['prompts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); })(),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); })(),
      updatedPrompts: (() { final guardedValue = map['updatedPrompts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt>(guardedValue, (value) => GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap((value as Map).cast<String, dynamic>())); })(),
      updatedTools: (() { final guardedValue = map['updatedTools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpServerUpdatedTool>(guardedValue, (value) => GetZeroTrustAccessAiControlsMcpServerUpdatedTool.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
