// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_connection_vpc.dart';

/// {@template pulumi_index_action_gateway_connection_action_gateway_connection_args_doc}
/// The set of arguments for ActionGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_index_action_gateway_connection_action_gateway_connection_args_doc}
class ActionGatewayConnectionArgs {
  /// A map of values for the provider's connection parameters, such as `siteUrl` for Jira.
  final pulumi.Input<Map<String, String>?>? connectionParameters;
  /// The ID of a team provider credential, such as your own OAuth application or an API key, to connect through. When omitted, DigitalOcean's shared OAuth application is used.
  final pulumi.Input<String?>? credentialId;
  /// The OAuth scopes to request. When omitted or empty, every scope the provider offers is requested. Ignored for API-key credentials.
  final pulumi.Input<List<String>?>? scopes;
  /// The slug of the tool provider, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers.
  final pulumi.Input<String> toolProvider;
  /// The actor ID the connection acts for: 1 to 64 characters from `[A-Za-z0-9._-]`. Use the actor ID of the sessions that need this account.
  final pulumi.Input<String> userId;
  /// Routes the connection's calls through a VPC. VPC networking must be enabled for your team.
  final pulumi.Input<ActionGatewayConnectionVpc?>? vpc;

  /// Creates a new [ActionGatewayConnectionArgs].
  /// [connectionParameters] A map of values for the provider's connection parameters, such as `siteUrl` for Jira.
  /// [credentialId] The ID of a team provider credential, such as your own OAuth application or an API key, to connect through. When omitted, DigitalOcean's shared OAuth application is used.
  /// [scopes] The OAuth scopes to request. When omitted or empty, every scope the provider offers is requested. Ignored for API-key credentials.
  /// [toolProvider] The slug of the tool provider, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers.
  /// [userId] The actor ID the connection acts for: 1 to 64 characters from `[A-Za-z0-9._-]`. Use the actor ID of the sessions that need this account.
  /// [vpc] Routes the connection's calls through a VPC. VPC networking must be enabled for your team.
  const ActionGatewayConnectionArgs({
    this.connectionParameters,
    this.credentialId,
    this.scopes,
    required this.toolProvider,
    required this.userId,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionParameters': ?connectionParameters,
      'credentialId': ?credentialId,
      'scopes': ?scopes,
      'toolProvider': toolProvider,
      'userId': userId,
      'vpc': ?pulumi.Input.mapOptionalInputValue<ActionGatewayConnectionVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory ActionGatewayConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ActionGatewayConnectionArgs(
      connectionParameters: (() { final guardedValue = map['connectionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      toolProvider: pulumi.Input.fromValue(map['toolProvider'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGatewayConnectionVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
