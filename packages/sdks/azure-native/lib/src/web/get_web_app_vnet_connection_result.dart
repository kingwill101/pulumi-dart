// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vnet_route_response.dart';

/// Result data returned by getWebAppVnetConnection.
class GetWebAppVnetConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A certificate file (.cer) blob containing the public key of the private key used to authenticate a
  /// Point-To-Site VPN connection.
  final String? certBlob;
  /// The client certificate thumbprint.
  final String certThumbprint;
  /// DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  final String? dnsServers;
  /// Resource Id.
  final String id;
  /// Flag that is used to denote if this is VNET injection
  final bool? isSwift;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// <code>true</code> if a resync is required; otherwise, <code>false</code>.
  final bool resyncRequired;
  /// The routes that this Virtual Network connection uses.
  final List<VnetRouteResponse> routes;
  /// Resource type.
  final String type;
  /// The Virtual Network's resource ID.
  final String? vnetResourceId;

  /// Creates a new [GetWebAppVnetConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certBlob] A certificate file (.cer) blob containing the public key of the private key used to authenticate a
  /// [certThumbprint] The client certificate thumbprint.
  /// [dnsServers] DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  /// [id] Resource Id.
  /// [isSwift] Flag that is used to denote if this is VNET injection
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [resyncRequired] <code>true</code> if a resync is required; otherwise, <code>false</code>.
  /// [routes] The routes that this Virtual Network connection uses.
  /// [type] Resource type.
  /// [vnetResourceId] The Virtual Network's resource ID.
  GetWebAppVnetConnectionResult({
    required this.azureApiVersion,
    this.certBlob,
    required this.certThumbprint,
    this.dnsServers,
    required this.id,
    this.isSwift,
    this.kind,
    required this.name,
    required this.resyncRequired,
    required this.routes,
    required this.type,
    this.vnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'certBlob': ?certBlob,
      'certThumbprint': certThumbprint,
      'dnsServers': ?dnsServers,
      'id': id,
      'isSwift': ?isSwift,
      'kind': ?kind,
      'name': name,
      'resyncRequired': resyncRequired,
      'routes': pulumi.Input.encodeList<VnetRouteResponse, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'type': type,
      'vnetResourceId': ?vnetResourceId,
    };
  }

  factory GetWebAppVnetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppVnetConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      certBlob: map['certBlob'] == null ? null : map['certBlob']! as String,
      certThumbprint: map['certThumbprint'] as String,
      dnsServers: map['dnsServers'] == null ? null : map['dnsServers']! as String,
      id: map['id'] as String,
      isSwift: map['isSwift'] == null ? null : map['isSwift']! as bool,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      resyncRequired: map['resyncRequired'] as bool,
      routes: pulumi.Input.decodeList<VnetRouteResponse>(map['routes'], (value) => VnetRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      vnetResourceId: map['vnetResourceId'] == null ? null : map['vnetResourceId']! as String,
    );
  }
}

