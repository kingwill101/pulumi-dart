// ignore_for_file: unused_element, unnecessary_cast

import 'address_space_response.dart';
import 'bgp_settings_response.dart';

/// A common class for general resource information.
class LocalNetworkGatewayResponse {
  /// Local network gateway's BGP speaker settings.
  final BgpSettingsResponse? bgpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// FQDN of local network gateway.
  final String? fqdn;
  /// IP address of local network gateway.
  final String? gatewayIpAddress;
  /// Resource ID.
  final String? id;
  /// Local network site address space.
  final AddressSpaceResponse? localNetworkAddressSpace;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the local network gateway resource.
  final String provisioningState;
  /// The resource GUID property of the local network gateway resource.
  final String resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [LocalNetworkGatewayResponse].
  /// [bgpSettings] Local network gateway's BGP speaker settings.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [fqdn] FQDN of local network gateway.
  /// [gatewayIpAddress] IP address of local network gateway.
  /// [id] Resource ID.
  /// [localNetworkAddressSpace] Local network site address space.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the local network gateway resource.
  /// [resourceGuid] The resource GUID property of the local network gateway resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  LocalNetworkGatewayResponse({
    this.bgpSettings,
    required this.etag,
    this.fqdn,
    this.gatewayIpAddress,
    this.id,
    this.localNetworkAddressSpace,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSettings': ?bgpSettings == null ? null : bgpSettings!.toMap(),
      'etag': etag,
      'fqdn': ?fqdn,
      'gatewayIpAddress': ?gatewayIpAddress,
      'id': ?id,
      'localNetworkAddressSpace': ?localNetworkAddressSpace == null ? null : localNetworkAddressSpace!.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'type': type,
    };
  }

  factory LocalNetworkGatewayResponse.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGatewayResponse(
      bgpSettings: map['bgpSettings'] == null ? null : BgpSettingsResponse.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : map['gatewayIpAddress'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      localNetworkAddressSpace: map['localNetworkAddressSpace'] == null ? null : AddressSpaceResponse.fromMap((map['localNetworkAddressSpace'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

