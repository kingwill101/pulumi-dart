// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_action_gateway_mcp_server_action_gateway_mcp_server_args_doc}
/// The set of arguments for ActionGatewayMcpServer.
/// {@endtemplate}
/// {@macro pulumi_index_action_gateway_mcp_server_action_gateway_mcp_server_args_doc}
class ActionGatewayMcpServerArgs {
  /// For `secret`: the key or token itself, sent in the `Authorization` header. It is write-only, so Terraform cannot detect changes made outside of Terraform. Conflicts with `credentialRef`.
  final pulumi.Input<String?>? apiKey;
  /// For `secret`: a reference to a secret your team stores with DigitalOcean. Conflicts with `apiKey`.
  final pulumi.Input<String?>? credentialRef;
  /// How requests to the server authenticate: `none` (the default), `secret`, or `connection`.
  final pulumi.Input<String?>? credentialRefSource;
  /// The description shown on the server's catalog card, at most 1024 characters.
  final pulumi.Input<String?>? description;
  /// The slugs of the discovered tools to enable, such as `docsSearch`. Every other tool of the server is disabled. When omitted, Terraform does not manage which tools are enabled. Changing this discovers the server's tools again before enabling them.
  final pulumi.Input<List<String>?>? enabledTools;
  /// The HTTPS URL of the server's MCP endpoint. Its host must resolve only to public IP addresses.
  final pulumi.Input<String> endpoint;
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
  /// The identifier for the server, unique within your team. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9-]`.
  final pulumi.Input<String> serverRef;
  /// For `connection`: the actor ID of a user who has authorized the server. The tools of such a server are discovered and verified as this user, so `enabledTools` requires it. Adding or changing it discovers the server's tools again.
  final pulumi.Input<String?>? syncUserId;
  /// The MCP transport. Only `streamableHttp`, the default, is supported.
  final pulumi.Input<String?>? transport;

  /// Creates a new [ActionGatewayMcpServerArgs].
  /// [apiKey] For `secret`: the key or token itself, sent in the `Authorization` header. It is write-only, so Terraform cannot detect changes made outside of Terraform. Conflicts with `credentialRef`.
  /// [credentialRef] For `secret`: a reference to a secret your team stores with DigitalOcean. Conflicts with `apiKey`.
  /// [credentialRefSource] How requests to the server authenticate: `none` (the default), `secret`, or `connection`.
  /// [description] The description shown on the server's catalog card, at most 1024 characters.
  /// [enabledTools] The slugs of the discovered tools to enable, such as `docsSearch`. Every other tool of the server is disabled. When omitted, Terraform does not manage which tools are enabled. Changing this discovers the server's tools again before enabling them.
  /// [endpoint] The HTTPS URL of the server's MCP endpoint. Its host must resolve only to public IP addresses.
  /// [oauthAuthorizationTtlSeconds] How long, in seconds, a user's authorization may be reused before they must consent again. `0` means 30 days.
  /// [oauthAuthorizeUrl] For `connection`: the OAuth authorization endpoint, on the endpoint's host or another host under the same registrable domain.
  /// [oauthClientId] For `connection`: the client ID of your team's OAuth client for the server. Each user of the server then authorizes individually.
  /// [oauthClientSecret] For `connection`: the client secret of your team's OAuth client. It is write-only.
  /// [oauthScopes] For `connection`: the scopes to request from each user, 1 to 64 of them.
  /// [oauthTokenUrl] For `connection`: the OAuth token endpoint, under the same rules as `oauthAuthorizeUrl`.
  /// [serverRef] The identifier for the server, unique within your team. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9-]`.
  /// [syncUserId] For `connection`: the actor ID of a user who has authorized the server. The tools of such a server are discovered and verified as this user, so `enabledTools` requires it. Adding or changing it discovers the server's tools again.
  /// [transport] The MCP transport. Only `streamableHttp`, the default, is supported.
  const ActionGatewayMcpServerArgs({
    this.apiKey,
    this.credentialRef,
    this.credentialRefSource,
    this.description,
    this.enabledTools,
    required this.endpoint,
    this.oauthAuthorizationTtlSeconds,
    this.oauthAuthorizeUrl,
    this.oauthClientId,
    this.oauthClientSecret,
    this.oauthScopes,
    this.oauthTokenUrl,
    required this.serverRef,
    this.syncUserId,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'credentialRef': ?credentialRef,
      'credentialRefSource': ?credentialRefSource,
      'description': ?description,
      'enabledTools': ?enabledTools,
      'endpoint': endpoint,
      'oauthAuthorizationTtlSeconds': ?oauthAuthorizationTtlSeconds,
      'oauthAuthorizeUrl': ?oauthAuthorizeUrl,
      'oauthClientId': ?oauthClientId,
      'oauthClientSecret': ?oauthClientSecret,
      'oauthScopes': ?oauthScopes,
      'oauthTokenUrl': ?oauthTokenUrl,
      'serverRef': serverRef,
      'syncUserId': ?syncUserId,
      'transport': ?transport,
    };
  }

  factory ActionGatewayMcpServerArgs.fromMap(Map<String, dynamic> map) {
    return ActionGatewayMcpServerArgs(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialRef: (() { final guardedValue = map['credentialRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialRefSource: (() { final guardedValue = map['credentialRefSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledTools: (() { final guardedValue = map['enabledTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      oauthAuthorizationTtlSeconds: (() { final guardedValue = map['oauthAuthorizationTtlSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      oauthAuthorizeUrl: (() { final guardedValue = map['oauthAuthorizeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthClientId: (() { final guardedValue = map['oauthClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthClientSecret: (() { final guardedValue = map['oauthClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      oauthTokenUrl: (() { final guardedValue = map['oauthTokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverRef: pulumi.Input.fromValue(map['serverRef'] as String),
      syncUserId: (() { final guardedValue = map['syncUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transport: (() { final guardedValue = map['transport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
