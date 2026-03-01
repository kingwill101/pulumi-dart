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
    pulumi.Output<BgpSettings>? bgpSettings,
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? gatewayIpAddress,
    pulumi.Output<String>? id,
    pulumi.Output<AddressSpace>? localNetworkAddressSpace,
    pulumi.Output<String>? localNetworkGatewayName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      bgpSettings = pulumi.Input.asOptionalInput<BgpSettings>(bgpSettings),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      gatewayIpAddress = pulumi.Input.asOptionalInput<String>(gatewayIpAddress),
      id = pulumi.Input.asOptionalInput<String>(id),
      localNetworkAddressSpace = pulumi.Input.asOptionalInput<AddressSpace>(localNetworkAddressSpace),
      localNetworkGatewayName = pulumi.Input.asOptionalInput<String>(localNetworkGatewayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      bgpSettings: map['bgpSettings'] == null ? null : pulumi.Output.create<BgpSettings>(BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>())),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : pulumi.Output.create<String>(map['gatewayIpAddress'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      localNetworkAddressSpace: map['localNetworkAddressSpace'] == null ? null : pulumi.Output.create<AddressSpace>(AddressSpace.fromMap((map['localNetworkAddressSpace'] as Map).cast<String, dynamic>())),
      localNetworkGatewayName: map['localNetworkGatewayName'] == null ? null : pulumi.Output.create<String>(map['localNetworkGatewayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

