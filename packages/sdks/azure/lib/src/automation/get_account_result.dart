// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_identity.dart';
import 'get_account_private_endpoint_connection.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Endpoint for this Automation Account.
  final String? endpoint;
  /// The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account.
  final String? hybridServiceUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Optional) An `identity` block as defined below.
  final List<GetAccountIdentity>? identities;
  final String? name;
  /// The Primary Access Key for the Automation Account.
  final String? primaryKey;
  final List<GetAccountPrivateEndpointConnection>? privateEndpointConnections;
  final String? resourceGroupName;
  /// The Secondary Access Key for the Automation Account.
  final String? secondaryKey;

  /// Creates a new [GetAccountResult].
  /// [endpoint] The Endpoint for this Automation Account.
  /// [hybridServiceUrl] The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] (Optional) An `identity` block as defined below.
  /// [name] Optional.
  /// [primaryKey] The Primary Access Key for the Automation Account.
  /// [privateEndpointConnections] Optional.
  /// [resourceGroupName] Optional.
  /// [secondaryKey] The Secondary Access Key for the Automation Account.
  const GetAccountResult({
    this.endpoint,
    this.hybridServiceUrl,
    this.id,
    this.identities,
    this.name,
    this.primaryKey,
    this.privateEndpointConnections,
    this.resourceGroupName,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'hybridServiceUrl': ?hybridServiceUrl,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'primaryKey': ?primaryKey,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountPrivateEndpointConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hybridServiceUrl: (() { final guardedValue = map['hybridServiceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountIdentity>(guardedValue, (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountPrivateEndpointConnection>(guardedValue, (value) => GetAccountPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
