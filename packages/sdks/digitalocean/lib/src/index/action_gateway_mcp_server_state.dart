// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_mcp_server_discovered_tool.dart';

/// Input properties used for looking up and filtering ActionGatewayMcpServer resources.
class ActionGatewayMcpServerState {
  /// For `secret`: the key or token itself, sent in the `Authorization` header. It is write-only, so Terraform cannot detect changes made outside of Terraform. Conflicts with `credentialRef`.
  final pulumi.Input<String?>? apiKey;
  /// When the server was registered.
  final pulumi.Input<String?>? createdAt;
  /// For `secret`: a reference to a secret your team stores with DigitalOcean. Conflicts with `apiKey`.
  final pulumi.Input<String?>? credentialRef;
  /// How requests to the server authenticate: `none` (the default), `secret`, or `connection`.
  final pulumi.Input<String?>? credentialRefSource;
  /// The description shown on the server's catalog card, at most 1024 characters.
  final pulumi.Input<String?>? description;
  /// The tools discovered on the server.
  final pulumi.Input<List<ActionGatewayMcpServerDiscoveredTool>?>? discoveredTools;
  /// The slugs of the discovered tools to enable, such as `docsSearch`. Every other tool of the server is disabled. When omitted, Terraform does not manage which tools are enabled. Changing this discovers the server's tools again before enabling them.
  final pulumi.Input<List<String>?>? enabledTools;
  /// The HTTPS URL of the server's MCP endpoint. Its host must resolve only to public IP addresses.
  final pulumi.Input<String?>? endpoint;
  /// When the server's tools were last discovered.
  final pulumi.Input<String?>? lastSyncedAt;
  /// How long, in seconds, a user's authorization may be reused before they must consent again. `0` means 30 days.
  final pulumi.Input<int?>? oauthAuthorizationTtlSeconds;
  /// For `connection`: the OAuth authorization endpoint, on the endpoint's host or another host under the same registrable domain.
  final pulumi.Input<String?>? oauthAuthorizeUrl;
  /// For `connection`: the client ID of your team's OAuth client for the server. Each user of the server then authorizes individually.
  final pulumi.Input<String?>? oauthClientId;
  /// For `connection`: the client secret of your team's OAuth client. It is write-only.
  final pulumi.Input<String?>? oauthClientSecret;
  /// For `connection`: the scopes to request from each user, 1 to 64 of them.
  final pulumi.Input<List<String>?>? oauthScopes;
  /// For `connection`: the OAuth token endpoint, under the same rules as `oauthAuthorizeUrl`.
  final pulumi.Input<String?>? oauthTokenUrl;
  /// The MCP protocol version the server reported.
  final pulumi.Input<String?>? protocolVersion;
  /// The identifier for the server, unique within your team. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9-]`.
  final pulumi.Input<String?>? serverRef;
  /// The error from the most recent tool discovery, if any.
  final pulumi.Input<String?>? syncError;
  /// The status of the most recent tool discovery.
  final pulumi.Input<String?>? syncStatus;
  /// For `connection`: the actor ID of a user who has authorized the server. The tools of such a server are discovered and verified as this user, so `enabledTools` requires it. Adding or changing it discovers the server's tools again.
  final pulumi.Input<String?>? syncUserId;
  /// The number of tools discovered on the server.
  final pulumi.Input<int?>? toolCount;
  /// The MCP transport. Only `streamableHttp`, the default, is supported.
  final pulumi.Input<String?>? transport;
  /// When the server was last modified.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ActionGatewayMcpServerState].
  /// [apiKey] For `secret`: the key or token itself, sent in the `Authorization` header. It is write-only, so Terraform cannot detect changes made outside of Terraform. Conflicts with `credentialRef`.
  /// [createdAt] When the server was registered.
  /// [credentialRef] For `secret`: a reference to a secret your team stores with DigitalOcean. Conflicts with `apiKey`.
  /// [credentialRefSource] How requests to the server authenticate: `none` (the default), `secret`, or `connection`.
  /// [description] The description shown on the server's catalog card, at most 1024 characters.
  /// [discoveredTools] The tools discovered on the server.
  /// [enabledTools] The slugs of the discovered tools to enable, such as `docsSearch`. Every other tool of the server is disabled. When omitted, Terraform does not manage which tools are enabled. Changing this discovers the server's tools again before enabling them.
  /// [endpoint] The HTTPS URL of the server's MCP endpoint. Its host must resolve only to public IP addresses.
  /// [lastSyncedAt] When the server's tools were last discovered.
  /// [oauthAuthorizationTtlSeconds] How long, in seconds, a user's authorization may be reused before they must consent again. `0` means 30 days.
  /// [oauthAuthorizeUrl] For `connection`: the OAuth authorization endpoint, on the endpoint's host or another host under the same registrable domain.
  /// [oauthClientId] For `connection`: the client ID of your team's OAuth client for the server. Each user of the server then authorizes individually.
  /// [oauthClientSecret] For `connection`: the client secret of your team's OAuth client. It is write-only.
  /// [oauthScopes] For `connection`: the scopes to request from each user, 1 to 64 of them.
  /// [oauthTokenUrl] For `connection`: the OAuth token endpoint, under the same rules as `oauthAuthorizeUrl`.
  /// [protocolVersion] The MCP protocol version the server reported.
  /// [serverRef] The identifier for the server, unique within your team. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9-]`.
  /// [syncError] The error from the most recent tool discovery, if any.
  /// [syncStatus] The status of the most recent tool discovery.
  /// [syncUserId] For `connection`: the actor ID of a user who has authorized the server. The tools of such a server are discovered and verified as this user, so `enabledTools` requires it. Adding or changing it discovers the server's tools again.
  /// [toolCount] The number of tools discovered on the server.
  /// [transport] The MCP transport. Only `streamableHttp`, the default, is supported.
  /// [updatedAt] When the server was last modified.
  const ActionGatewayMcpServerState({
    this.apiKey,
    this.createdAt,
    this.credentialRef,
    this.credentialRefSource,
    this.description,
    this.discoveredTools,
    this.enabledTools,
    this.endpoint,
    this.lastSyncedAt,
    this.oauthAuthorizationTtlSeconds,
    this.oauthAuthorizeUrl,
    this.oauthClientId,
    this.oauthClientSecret,
    this.oauthScopes,
    this.oauthTokenUrl,
    this.protocolVersion,
    this.serverRef,
    this.syncError,
    this.syncStatus,
    this.syncUserId,
    this.toolCount,
    this.transport,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'createdAt': ?createdAt,
      'credentialRef': ?credentialRef,
      'credentialRefSource': ?credentialRefSource,
      'description': ?description,
      'discoveredTools': ?pulumi.Input.mapOptionalInputValue<List<ActionGatewayMcpServerDiscoveredTool>, List<Map<String, dynamic>>>(discoveredTools, (value) => pulumi.Input.encodeList<ActionGatewayMcpServerDiscoveredTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabledTools': ?enabledTools,
      'endpoint': ?endpoint,
      'lastSyncedAt': ?lastSyncedAt,
      'oauthAuthorizationTtlSeconds': ?oauthAuthorizationTtlSeconds,
      'oauthAuthorizeUrl': ?oauthAuthorizeUrl,
      'oauthClientId': ?oauthClientId,
      'oauthClientSecret': ?oauthClientSecret,
      'oauthScopes': ?oauthScopes,
      'oauthTokenUrl': ?oauthTokenUrl,
      'protocolVersion': ?protocolVersion,
      'serverRef': ?serverRef,
      'syncError': ?syncError,
      'syncStatus': ?syncStatus,
      'syncUserId': ?syncUserId,
      'toolCount': ?toolCount,
      'transport': ?transport,
      'updatedAt': ?updatedAt,
    };
  }

  factory ActionGatewayMcpServerState.fromMap(Map<String, dynamic> map) {
    return ActionGatewayMcpServerState(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialRef: (() { final guardedValue = map['credentialRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialRefSource: (() { final guardedValue = map['credentialRefSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveredTools: (() { final guardedValue = map['discoveredTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActionGatewayMcpServerDiscoveredTool>(guardedValue, (value) => ActionGatewayMcpServerDiscoveredTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabledTools: (() { final guardedValue = map['enabledTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSyncedAt: (() { final guardedValue = map['lastSyncedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthAuthorizationTtlSeconds: (() { final guardedValue = map['oauthAuthorizationTtlSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      oauthAuthorizeUrl: (() { final guardedValue = map['oauthAuthorizeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthClientId: (() { final guardedValue = map['oauthClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthClientSecret: (() { final guardedValue = map['oauthClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      oauthTokenUrl: (() { final guardedValue = map['oauthTokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolVersion: (() { final guardedValue = map['protocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverRef: (() { final guardedValue = map['serverRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncError: (() { final guardedValue = map['syncError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncStatus: (() { final guardedValue = map['syncStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncUserId: (() { final guardedValue = map['syncUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolCount: (() { final guardedValue = map['toolCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      transport: (() { final guardedValue = map['transport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
