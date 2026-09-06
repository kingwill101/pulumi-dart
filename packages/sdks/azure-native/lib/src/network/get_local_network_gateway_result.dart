// ignore_for_file: unused_element, unnecessary_cast

import 'address_space_response.dart';
import 'bgp_settings_response.dart';

/// Result data returned by getLocalNetworkGateway.
class GetLocalNetworkGatewayResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Local network gateway's BGP speaker settings.
  final BgpSettingsResponse? bgpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
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
  final String? name;
  /// The provisioning state of the local network gateway resource.
  final String? provisioningState;
  /// The resource GUID property of the local network gateway resource.
  final String? resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetLocalNetworkGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetLocalNetworkGatewayResult({
    this.azureApiVersion,
    this.bgpSettings,
    this.etag,
    this.fqdn,
    this.gatewayIpAddress,
    this.id,
    this.localNetworkAddressSpace,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'bgpSettings': ?bgpSettings?.toMap(),
      'etag': ?etag,
      'fqdn': ?fqdn,
      'gatewayIpAddress': ?gatewayIpAddress,
      'id': ?id,
      'localNetworkAddressSpace': ?localNetworkAddressSpace?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetLocalNetworkGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetLocalNetworkGatewayResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return BgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayIpAddress: (() { final guardedValue = map['gatewayIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localNetworkAddressSpace: (() { final guardedValue = map['localNetworkAddressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
