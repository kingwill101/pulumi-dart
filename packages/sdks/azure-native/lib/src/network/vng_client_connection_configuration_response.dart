// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'sub_resource_response.dart';

/// A vpn client connection configuration for client connection configuration.
class VngClientConnectionConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The provisioning state of the VngClientConnectionConfiguration resource.
  final pulumi.Input<String> provisioningState;

  /// List of references to virtualNetworkGatewayPolicyGroups
  final pulumi.Input<List<SubResourceResponse>>
  virtualNetworkGatewayPolicyGroups;

  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final pulumi.Input<AddressSpaceResponse> vpnClientAddressPool;

  /// Creates a new [VngClientConnectionConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VngClientConnectionConfiguration resource.
  /// [virtualNetworkGatewayPolicyGroups] List of references to virtualNetworkGatewayPolicyGroups
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  VngClientConnectionConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.virtualNetworkGatewayPolicyGroups,
    required this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'virtualNetworkGatewayPolicyGroups':
          pulumi.Input.mapInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            virtualNetworkGatewayPolicyGroups,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpnClientAddressPool':
          pulumi.Input.mapInputValue<
            AddressSpaceResponse,
            Map<String, dynamic>
          >(vpnClientAddressPool, (value) => value.toMap()),
    };
  }

  factory VngClientConnectionConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VngClientConnectionConfigurationResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
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
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      virtualNetworkGatewayPolicyGroups: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResourceResponse>(
          map['virtualNetworkGatewayPolicyGroups']!,
          (value) => SubResourceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      vpnClientAddressPool: pulumi.Input.fromValue(
        AddressSpaceResponse.fromMap(
          (map['vpnClientAddressPool']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
