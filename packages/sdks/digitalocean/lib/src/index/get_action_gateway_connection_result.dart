// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_connection_authorization.dart';
import 'get_action_gateway_connection_vpc.dart';

/// Result data returned by getActionGatewayConnection.
class GetActionGatewayConnectionResult {
  /// The authorization the account holder still has to complete. Set only while the connection is pending.
  final List<GetActionGatewayConnectionAuthorization>? authorizations;
  /// The provider's connection parameters.
  final Map<String, String>? connectionParameters;
  /// When the connection was created.
  final String? createdAt;
  /// The ID of the team provider credential the connection uses, empty for `digitaloceanOauth`.
  final String? credentialId;
  /// The kind of credential the connection uses: `digitaloceanOauth`, `privateOauth`, or `teamApiKey`.
  final String? credentialKind;
  /// When the account holder completed authorization.
  final String? grantedAt;
  /// The ID of the connection.
  final String? id;
  /// The DigitalOcean user ID of the user who created the connection.
  final String? owningUserId;
  /// The OAuth scopes granted, or requested while pending.
  final List<String>? scopes;
  /// The status of the authorization.
  final String? status;
  /// The slug of the tool provider.
  final String? toolProvider;
  /// The human-readable name of the tool provider.
  final String? toolProviderDisplayName;
  /// When the connection was last modified.
  final String? updatedAt;
  /// The actor ID the connection acts for.
  final String? userId;
  /// The private network the connection's calls use, when configured.
  final List<GetActionGatewayConnectionVpc>? vpcs;

  /// Creates a new [GetActionGatewayConnectionResult].
  /// [authorizations] The authorization the account holder still has to complete. Set only while the connection is pending.
  /// [connectionParameters] The provider's connection parameters.
  /// [createdAt] When the connection was created.
  /// [credentialId] The ID of the team provider credential the connection uses, empty for `digitaloceanOauth`.
  /// [credentialKind] The kind of credential the connection uses: `digitaloceanOauth`, `privateOauth`, or `teamApiKey`.
  /// [grantedAt] When the account holder completed authorization.
  /// [id] The ID of the connection.
  /// [owningUserId] The DigitalOcean user ID of the user who created the connection.
  /// [scopes] The OAuth scopes granted, or requested while pending.
  /// [status] The status of the authorization.
  /// [toolProvider] The slug of the tool provider.
  /// [toolProviderDisplayName] The human-readable name of the tool provider.
  /// [updatedAt] When the connection was last modified.
  /// [userId] The actor ID the connection acts for.
  /// [vpcs] The private network the connection's calls use, when configured.
  const GetActionGatewayConnectionResult({
    this.authorizations,
    this.connectionParameters,
    this.createdAt,
    this.credentialId,
    this.credentialKind,
    this.grantedAt,
    this.id,
    this.owningUserId,
    this.scopes,
    this.status,
    this.toolProvider,
    this.toolProviderDisplayName,
    this.updatedAt,
    this.userId,
    this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': ?(() { final guardedValue = authorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGatewayConnectionAuthorization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionParameters': ?connectionParameters,
      'createdAt': ?createdAt,
      'credentialId': ?credentialId,
      'credentialKind': ?credentialKind,
      'grantedAt': ?grantedAt,
      'id': ?id,
      'owningUserId': ?owningUserId,
      'scopes': ?scopes,
      'status': ?status,
      'toolProvider': ?toolProvider,
      'toolProviderDisplayName': ?toolProviderDisplayName,
      'updatedAt': ?updatedAt,
      'userId': ?userId,
      'vpcs': ?(() { final guardedValue = vpcs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGatewayConnectionVpc, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetActionGatewayConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayConnectionResult(
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGatewayConnectionAuthorization>(guardedValue, (value) => GetActionGatewayConnectionAuthorization.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionParameters: (() { final guardedValue = map['connectionParameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialKind: (() { final guardedValue = map['credentialKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grantedAt: (() { final guardedValue = map['grantedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owningUserId: (() { final guardedValue = map['owningUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      toolProvider: (() { final guardedValue = map['toolProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      toolProviderDisplayName: (() { final guardedValue = map['toolProviderDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGatewayConnectionVpc>(guardedValue, (value) => GetActionGatewayConnectionVpc.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
