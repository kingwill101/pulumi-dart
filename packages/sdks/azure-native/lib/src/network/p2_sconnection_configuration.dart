// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'routing_configuration.dart';

/// P2SConnectionConfiguration Resource.
class P2SConnectionConfiguration {
  /// Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  final pulumi.Input<bool>? enableInternetSecurity;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;

  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final pulumi.Input<AddressSpace>? vpnClientAddressPool;

  /// Creates a new [P2SConnectionConfiguration].
  /// [enableInternetSecurity] Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  P2SConnectionConfiguration({
    this.enableInternetSecurity,
    this.id,
    this.name,
    this.routingConfiguration,
    this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInternetSecurity': ?enableInternetSecurity,
      'id': ?id,
      'name': ?name,
      'routingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            RoutingConfiguration,
            Map<String, dynamic>
          >(routingConfiguration, (value) => value.toMap()),
      'vpnClientAddressPool':
          ?pulumi.Input.mapOptionalInputValue<
            AddressSpace,
            Map<String, dynamic>
          >(vpnClientAddressPool, (value) => value.toMap()),
    };
  }

  factory P2SConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return P2SConnectionConfiguration(
      enableInternetSecurity: (() {
        final guardedValue = map['enableInternetSecurity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routingConfiguration: (() {
        final guardedValue = map['routingConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoutingConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vpnClientAddressPool: (() {
        final guardedValue = map['vpnClientAddressPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
