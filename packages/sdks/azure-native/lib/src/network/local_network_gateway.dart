// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'bgp_settings.dart';

/// A common class for general resource information.
class LocalNetworkGateway {
  /// Local network gateway's BGP speaker settings.
  final pulumi.Input<BgpSettings>? bgpSettings;
  /// FQDN of local network gateway.
  final pulumi.Input<String>? fqdn;
  /// IP address of local network gateway.
  final pulumi.Input<String>? gatewayIpAddress;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Local network site address space.
  final pulumi.Input<AddressSpace>? localNetworkAddressSpace;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocalNetworkGateway].
  /// [bgpSettings] Local network gateway's BGP speaker settings.
  /// [fqdn] FQDN of local network gateway.
  /// [gatewayIpAddress] IP address of local network gateway.
  /// [id] Resource ID.
  /// [localNetworkAddressSpace] Local network site address space.
  /// [location] Resource location.
  /// [tags] Resource tags.
  const LocalNetworkGateway({
    this.bgpSettings,
    this.fqdn,
    this.gatewayIpAddress,
    this.id,
    this.localNetworkAddressSpace,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<BgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'gatewayIpAddress': ?gatewayIpAddress,
      'id': ?id,
      'localNetworkAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(localNetworkAddressSpace, (value) => value.toMap()),
      'location': ?location,
      'tags': ?tags,
    };
  }

  factory LocalNetworkGateway.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGateway(
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIpAddress: (() { final guardedValue = map['gatewayIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localNetworkAddressSpace: (() { final guardedValue = map['localNetworkAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
