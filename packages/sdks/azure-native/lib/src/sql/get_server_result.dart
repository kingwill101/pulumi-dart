// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_response.dart';
import 'server_external_administrator_response.dart';
import 'server_private_endpoint_connection_response.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// Administrator username for the server. Once created it cannot be changed.
  final String? administratorLogin;
  /// The Azure Active Directory administrator of the server. This can only be used at server create time. If used for server update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  final ServerExternalAdministratorResponse? administrators;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Status of external governance.
  final String externalGovernanceStatus;
  /// The Client id used for cross tenant CMK scenario
  final String? federatedClientId;
  /// The fully qualified domain name of the server.
  final String fullyQualifiedDomainName;
  /// Resource ID.
  final String id;
  /// The Azure Active Directory identity of the server.
  final ResourceIdentityResponse? identity;
  /// Whether or not to enable IPv6 support for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final String? isIPv6Enabled;
  /// A CMK URI of the key to use for encryption.
  final String? keyId;
  /// Kind of sql server. This is metadata used for the Azure portal experience.
  final String kind;
  /// Resource location.
  final String location;
  /// Minimal TLS version. Allowed values: 'None', 1.0', '1.1', '1.2', '1.3'
  final String? minimalTlsVersion;
  /// Resource name.
  final String name;
  /// The resource id of a user assigned identity to be used by default.
  final String? primaryUserAssignedIdentityId;
  /// List of private endpoint connections on a server
  final List<ServerPrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Whether or not public endpoint access is allowed for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled' or 'SecuredByPerimeter'
  final String? publicNetworkAccess;
  /// Whether or not to restrict outbound network access for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final String? restrictOutboundNetworkAccess;
  /// The state of the server.
  final String state;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// The version of the server.
  final String? version;
  /// Whether or not existing server has a workspace created and if it allows connection from workspace
  final String workspaceFeature;

  /// Creates a new [GetServerResult].
  /// [administratorLogin] Administrator username for the server. Once created it cannot be changed.
  /// [administrators] The Azure Active Directory administrator of the server. This can only be used at server create time. If used for server update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [externalGovernanceStatus] Status of external governance.
  /// [federatedClientId] The Client id used for cross tenant CMK scenario
  /// [fullyQualifiedDomainName] The fully qualified domain name of the server.
  /// [id] Resource ID.
  /// [identity] The Azure Active Directory identity of the server.
  /// [isIPv6Enabled] Whether or not to enable IPv6 support for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [keyId] A CMK URI of the key to use for encryption.
  /// [kind] Kind of sql server. This is metadata used for the Azure portal experience.
  /// [location] Resource location.
  /// [minimalTlsVersion] Minimal TLS version. Allowed values: 'None', 1.0', '1.1', '1.2', '1.3'
  /// [name] Resource name.
  /// [primaryUserAssignedIdentityId] The resource id of a user assigned identity to be used by default.
  /// [privateEndpointConnections] List of private endpoint connections on a server
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled' or 'SecuredByPerimeter'
  /// [restrictOutboundNetworkAccess] Whether or not to restrict outbound network access for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [state] The state of the server.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [version] The version of the server.
  /// [workspaceFeature] Whether or not existing server has a workspace created and if it allows connection from workspace
  const GetServerResult({
    this.administratorLogin,
    this.administrators,
    required this.azureApiVersion,
    required this.externalGovernanceStatus,
    this.federatedClientId,
    required this.fullyQualifiedDomainName,
    required this.id,
    this.identity,
    this.isIPv6Enabled,
    this.keyId,
    required this.kind,
    required this.location,
    this.minimalTlsVersion,
    required this.name,
    this.primaryUserAssignedIdentityId,
    required this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.restrictOutboundNetworkAccess,
    required this.state,
    this.tags,
    required this.type,
    this.version,
    required this.workspaceFeature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administrators': ?administrators?.toMap(),
      'azureApiVersion': azureApiVersion,
      'externalGovernanceStatus': externalGovernanceStatus,
      'federatedClientId': ?federatedClientId,
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'id': id,
      'identity': ?identity?.toMap(),
      'isIPv6Enabled': ?isIPv6Enabled,
      'keyId': ?keyId,
      'kind': kind,
      'location': location,
      'minimalTlsVersion': ?minimalTlsVersion,
      'name': name,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'privateEndpointConnections': pulumi.Input.encodeList<ServerPrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'state': state,
      'tags': ?tags,
      'type': type,
      'version': ?version,
      'workspaceFeature': workspaceFeature,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      administrators: (() { final guardedValue = map['administrators']; if (guardedValue == null) return null; return ServerExternalAdministratorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      externalGovernanceStatus: map['externalGovernanceStatus'] as String,
      federatedClientId: (() { final guardedValue = map['federatedClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isIPv6Enabled: (() { final guardedValue = map['isIPv6Enabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: map['kind'] as String,
      location: map['location'] as String,
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      primaryUserAssignedIdentityId: (() { final guardedValue = map['primaryUserAssignedIdentityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: pulumi.Input.decodeList<ServerPrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => ServerPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restrictOutboundNetworkAccess: (() { final guardedValue = map['restrictOutboundNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: map['state'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceFeature: map['workspaceFeature'] as String,
    );
  }
}

