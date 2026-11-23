// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_connection_authorization.dart';
import 'action_gateway_connection_vpc.dart';

/// Input properties used for looking up and filtering ActionGatewayConnection resources.
class ActionGatewayConnectionState {
  /// The authorization the account holder still has to complete. Set only while the connection is pending.
  final pulumi.Input<List<ActionGatewayConnectionAuthorization>?>? authorizations;
  /// A map of values for the provider's connection parameters, such as `siteUrl` for Jira.
  final pulumi.Input<Map<String, String>?>? connectionParameters;
  /// When the connection was created.
  final pulumi.Input<String?>? createdAt;
  /// The ID of a `digitalocean.ActionGatewayProviderCredential`, such as your own OAuth application or an API key, to connect through. When omitted, DigitalOcean's shared OAuth application is used.
  final pulumi.Input<String?>? credentialId;
  /// The kind of credential the connection uses: `digitaloceanOauth`, `privateOauth`, or `teamApiKey`.
  final pulumi.Input<String?>? credentialKind;
  /// When the account holder completed authorization.
  final pulumi.Input<String?>? grantedAt;
  /// The DigitalOcean user ID of the user who created the connection.
  final pulumi.Input<String?>? owningUserId;
  /// The OAuth scopes to request. When omitted or empty, every scope the provider offers is requested. Ignored for API-key credentials.
  final pulumi.Input<List<String>?>? scopes;
  /// The status of the authorization.
  final pulumi.Input<String?>? status;
  /// The slug of the tool provider, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers.
  final pulumi.Input<String?>? toolProvider;
  /// The human-readable name of the tool provider.
  final pulumi.Input<String?>? toolProviderDisplayName;
  /// When the connection was last modified.
  final pulumi.Input<String?>? updatedAt;
  /// The actor ID the connection acts for: 1 to 64 characters from `[A-Za-z0-9._-]`. Use the actor ID of the sessions that need this account.
  final pulumi.Input<String?>? userId;
  /// Routes the connection's calls through a VPC. VPC networking must be enabled for your team.
  final pulumi.Input<ActionGatewayConnectionVpc?>? vpc;

  /// Creates a new [ActionGatewayConnectionState].
  /// [authorizations] The authorization the account holder still has to complete. Set only while the connection is pending.
  /// [connectionParameters] A map of values for the provider's connection parameters, such as `siteUrl` for Jira.
  /// [createdAt] When the connection was created.
  /// [credentialId] The ID of a `digitalocean.ActionGatewayProviderCredential`, such as your own OAuth application or an API key, to connect through. When omitted, DigitalOcean's shared OAuth application is used.
  /// [credentialKind] The kind of credential the connection uses: `digitaloceanOauth`, `privateOauth`, or `teamApiKey`.
  /// [grantedAt] When the account holder completed authorization.
  /// [owningUserId] The DigitalOcean user ID of the user who created the connection.
  /// [scopes] The OAuth scopes to request. When omitted or empty, every scope the provider offers is requested. Ignored for API-key credentials.
  /// [status] The status of the authorization.
  /// [toolProvider] The slug of the tool provider, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers.
  /// [toolProviderDisplayName] The human-readable name of the tool provider.
  /// [updatedAt] When the connection was last modified.
  /// [userId] The actor ID the connection acts for: 1 to 64 characters from `[A-Za-z0-9._-]`. Use the actor ID of the sessions that need this account.
  /// [vpc] Routes the connection's calls through a VPC. VPC networking must be enabled for your team.
  const ActionGatewayConnectionState({
    this.authorizations,
    this.connectionParameters,
    this.createdAt,
    this.credentialId,
    this.credentialKind,
    this.grantedAt,
    this.owningUserId,
    this.scopes,
    this.status,
    this.toolProvider,
    this.toolProviderDisplayName,
    this.updatedAt,
    this.userId,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<ActionGatewayConnectionAuthorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<ActionGatewayConnectionAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionParameters': ?connectionParameters,
      'createdAt': ?createdAt,
      'credentialId': ?credentialId,
      'credentialKind': ?credentialKind,
      'grantedAt': ?grantedAt,
      'owningUserId': ?owningUserId,
      'scopes': ?scopes,
      'status': ?status,
      'toolProvider': ?toolProvider,
      'toolProviderDisplayName': ?toolProviderDisplayName,
      'updatedAt': ?updatedAt,
      'userId': ?userId,
      'vpc': ?pulumi.Input.mapOptionalInputValue<ActionGatewayConnectionVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory ActionGatewayConnectionState.fromMap(Map<String, dynamic> map) {
    return ActionGatewayConnectionState(
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActionGatewayConnectionAuthorization>(guardedValue, (value) => ActionGatewayConnectionAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectionParameters: (() { final guardedValue = map['connectionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialKind: (() { final guardedValue = map['credentialKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantedAt: (() { final guardedValue = map['grantedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owningUserId: (() { final guardedValue = map['owningUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolProvider: (() { final guardedValue = map['toolProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolProviderDisplayName: (() { final guardedValue = map['toolProviderDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGatewayConnectionVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
