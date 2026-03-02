// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'bgp_settings_response.dart';

/// A common class for general resource information.
class LocalNetworkGatewayResponse {
  /// Local network gateway's BGP speaker settings.
  final pulumi.Input<BgpSettingsResponse>? bgpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// FQDN of local network gateway.
  final pulumi.Input<String>? fqdn;
  /// IP address of local network gateway.
  final pulumi.Input<String>? gatewayIpAddress;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Local network site address space.
  final pulumi.Input<AddressSpaceResponse>? localNetworkAddressSpace;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The provisioning state of the local network gateway resource.
  final pulumi.Input<String> provisioningState;
  /// The resource GUID property of the local network gateway resource.
  final pulumi.Input<String> resourceGuid;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

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
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<BgpSettingsResponse, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'etag': etag,
      'fqdn': ?fqdn,
      'gatewayIpAddress': ?gatewayIpAddress,
      'id': ?id,
      'localNetworkAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpaceResponse, Map<String, dynamic>>(localNetworkAddressSpace, (value) => value.toMap()),
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
      bgpSettings: map['bgpSettings'] == null ? null : (BgpSettingsResponse.fromMap((map['bgpSettings']! as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : (map['gatewayIpAddress']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      localNetworkAddressSpace: map['localNetworkAddressSpace'] == null ? null : (AddressSpaceResponse.fromMap((map['localNetworkAddressSpace']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

