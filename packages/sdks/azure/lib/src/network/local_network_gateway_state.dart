// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_network_gateway_bgp_settings.dart';

/// Input properties used for looking up and filtering LocalNetworkGateway resources.
class LocalNetworkGatewayState {
  /// The list of string CIDRs representing the address spaces the gateway exposes.
  final pulumi.Input<List<String>?>? addressSpaces;
  /// A `bgpSettings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  final pulumi.Input<LocalNetworkGatewayBgpSettings?>? bgpSettings;
  /// The gateway IP address to connect with.
  final pulumi.Input<String?>? gatewayAddress;
  /// The gateway FQDN to connect with.
  ///
  /// &gt; **Note:** Either `gatewayAddress` or `gatewayFqdn` should be specified.
  final pulumi.Input<String?>? gatewayFqdn;
  /// The location/region where the local network gateway is created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the local network gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LocalNetworkGatewayState].
  /// [addressSpaces] The list of string CIDRs representing the address spaces the gateway exposes.
  /// [bgpSettings] A `bgpSettings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  /// [gatewayAddress] The gateway IP address to connect with.
  /// [gatewayFqdn] The gateway FQDN to connect with.
  /// [location] The location/region where the local network gateway is created. Changing this forces a new resource to be created.
  /// [name] The name of the local network gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const LocalNetworkGatewayState({
    this.addressSpaces,
    this.bgpSettings,
    this.gatewayAddress,
    this.gatewayFqdn,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpaces': ?addressSpaces,
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<LocalNetworkGatewayBgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'gatewayAddress': ?gatewayAddress,
      'gatewayFqdn': ?gatewayFqdn,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LocalNetworkGatewayState.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGatewayState(
      addressSpaces: (() { final guardedValue = map['addressSpaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalNetworkGatewayBgpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayAddress: (() { final guardedValue = map['gatewayAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayFqdn: (() { final guardedValue = map['gatewayFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
