// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'sub_resource.dart';

/// A vpn client connection configuration for client connection configuration.
class VngClientConnectionConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// List of references to virtualNetworkGatewayPolicyGroups
  final pulumi.Input<List<SubResource>> virtualNetworkGatewayPolicyGroups;

  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final pulumi.Input<AddressSpace> vpnClientAddressPool;

  /// Creates a new [VngClientConnectionConfiguration].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [virtualNetworkGatewayPolicyGroups] List of references to virtualNetworkGatewayPolicyGroups
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  VngClientConnectionConfiguration({
    this.id,
    this.name,
    required this.virtualNetworkGatewayPolicyGroups,
    required this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'virtualNetworkGatewayPolicyGroups':
          pulumi.Input.mapInputValue<
            List<SubResource>,
            List<Map<String, dynamic>>
          >(
            virtualNetworkGatewayPolicyGroups,
            (value) =>
                pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'vpnClientAddressPool':
          pulumi.Input.mapInputValue<AddressSpace, Map<String, dynamic>>(
            vpnClientAddressPool,
            (value) => value.toMap(),
          ),
    };
  }

  factory VngClientConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return VngClientConnectionConfiguration(
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
      virtualNetworkGatewayPolicyGroups: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResource>(
          map['virtualNetworkGatewayPolicyGroups']!,
          (value) =>
              SubResource.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      vpnClientAddressPool: pulumi.Input.fromValue(
        AddressSpace.fromMap(
          (map['vpnClientAddressPool']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
