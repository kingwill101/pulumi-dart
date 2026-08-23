// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_identity.dart';
import 'get_account_private_endpoint_connection.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Endpoint for this Automation Account.
  final String endpoint;
  /// The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account.
  final String hybridServiceUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Optional) An `identity` block as defined below.
  final List<GetAccountIdentity> identities;
  final String name;
  /// The Primary Access Key for the Automation Account.
  final String primaryKey;
  final List<GetAccountPrivateEndpointConnection> privateEndpointConnections;
  final String resourceGroupName;
  /// The Secondary Access Key for the Automation Account.
  final String secondaryKey;

  /// Creates a new [GetAccountResult].
  /// [endpoint] The Endpoint for this Automation Account.
  /// [hybridServiceUrl] The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] (Optional) An `identity` block as defined below.
  /// [name] Required.
  /// [primaryKey] The Primary Access Key for the Automation Account.
  /// [privateEndpointConnections] Required.
  /// [resourceGroupName] Required.
  /// [secondaryKey] The Secondary Access Key for the Automation Account.
  const GetAccountResult({
    required this.endpoint,
    required this.hybridServiceUrl,
    required this.id,
    required this.identities,
    required this.name,
    required this.primaryKey,
    required this.privateEndpointConnections,
    required this.resourceGroupName,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'hybridServiceUrl': hybridServiceUrl,
      'id': id,
      'identities': pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'name': name,
      'primaryKey': primaryKey,
      'privateEndpointConnections': pulumi.Input.encodeList<GetAccountPrivateEndpointConnection, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secondaryKey': secondaryKey,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      endpoint: map['endpoint'] as String,
      hybridServiceUrl: map['hybridServiceUrl'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetAccountIdentity>(map['identities']!, (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      primaryKey: map['primaryKey'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<GetAccountPrivateEndpointConnection>(map['privateEndpointConnections']!, (value) => GetAccountPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}
