// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'bgp_settings.dart';

/// {@template pulumi_network_local_network_gateway_args_doc}
/// The set of arguments for LocalNetworkGateway.
/// {@endtemplate}
/// {@macro pulumi_network_local_network_gateway_args_doc}
class LocalNetworkGatewayArgs {
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
  /// The name of the local network gateway.
  final pulumi.Input<String>? localNetworkGatewayName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocalNetworkGatewayArgs].
  /// [bgpSettings] Local network gateway's BGP speaker settings.
  /// [fqdn] FQDN of local network gateway.
  /// [gatewayIpAddress] IP address of local network gateway.
  /// [id] Resource ID.
  /// [localNetworkAddressSpace] Local network site address space.
  /// [localNetworkGatewayName] The name of the local network gateway.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  LocalNetworkGatewayArgs({
    this.bgpSettings,
    this.fqdn,
    this.gatewayIpAddress,
    this.id,
    this.localNetworkAddressSpace,
    this.localNetworkGatewayName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<BgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'gatewayIpAddress': ?gatewayIpAddress,
      'id': ?id,
      'localNetworkAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(localNetworkAddressSpace, (value) => value.toMap()),
      'localNetworkGatewayName': ?localNetworkGatewayName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LocalNetworkGatewayArgs.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGatewayArgs(
      bgpSettings: map['bgpSettings'] == null ? null : (BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>())).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : (map['gatewayIpAddress'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      localNetworkAddressSpace: map['localNetworkAddressSpace'] == null ? null : (AddressSpace.fromMap((map['localNetworkAddressSpace'] as Map).cast<String, dynamic>())).input(),
      localNetworkGatewayName: map['localNetworkGatewayName'] == null ? null : (map['localNetworkGatewayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

