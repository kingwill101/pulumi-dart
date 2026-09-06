// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'bgp_settings_response.dart';

/// A common class for general resource information.
class LocalNetworkGatewayResponse {
  /// Local network gateway's BGP speaker settings.
  final pulumi.Input<BgpSettingsResponse?>? bgpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// FQDN of local network gateway.
  final pulumi.Input<String?>? fqdn;
  /// IP address of local network gateway.
  final pulumi.Input<String?>? gatewayIpAddress;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Local network site address space.
  final pulumi.Input<AddressSpaceResponse?>? localNetworkAddressSpace;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The provisioning state of the local network gateway resource.
  final pulumi.Input<String> provisioningState;
  /// The resource GUID property of the local network gateway resource.
  final pulumi.Input<String> resourceGuid;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const LocalNetworkGatewayResponse({
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
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIpAddress: (() { final guardedValue = map['gatewayIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localNetworkAddressSpace: (() { final guardedValue = map['localNetworkAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
