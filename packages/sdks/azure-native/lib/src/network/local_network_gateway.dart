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
  LocalNetworkGateway({
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
      bgpSettings: map['bgpSettings'] == null ? null : (BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>())).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : (map['gatewayIpAddress'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      localNetworkAddressSpace: map['localNetworkAddressSpace'] == null ? null : (AddressSpace.fromMap((map['localNetworkAddressSpace'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

